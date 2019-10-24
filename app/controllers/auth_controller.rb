class AuthController < ApplicationController
    # skip_before_action :authorized, only: [:create]

    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            @token = encode_token({ user_id: @user.id })
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :accepted
        else
            render json: { errors: "Invalid username or password" }, status: :unauthorized
        end
    end

    def create
        if current_user
            render json: current_user
        else
            render json: {errors: "whaterver"}, status: 403
        end
    end

    private

    # def user_login_params
    #     params.permit(:username, :password)
    # end

end