class BudgetListsController < ApplicationController

    def index 
        budget_lists = BudgetList.all
        render json: budget_lists
    end

    def create
        budget_list = BudgetList.new(budget_list_params)
        if budget_list.save
            render json: budget_list
        else 
            render json: {errors: budget_list.errors.full_messages}
        end

    end

    # do we need this method?
    def show
        budget_list = BudgetList.find(params[:id])
        render json: budget_list
    end

    def update
        budget_list = budget_list.find(params[:id])
        if budget_list.update(budget_list_params)
            render json: budget_list
        else  
            flash[:messages] = budget_list.errors.full_messages
            render json: budget_list
        end
    end

    def destroy
        budget_list = BudgetList.find(params[:id])
        budget_list.destroy
        render json: {message: "Successfully Deleted"}
    end

    private

    def budget_list_params
        params.require(:budget_list).permit(:title, :total_budget, :user_id, :paid_for)
    end

end
