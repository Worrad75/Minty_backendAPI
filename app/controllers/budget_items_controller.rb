class BudgetItemsController < ApplicationController

    #   index, create, update, delete, show

    def index 
        budget_items = BudgetItem.all
        render json: budget_items
    end

    def create
        budget_item = BudgetItem.new(budget_item_params)
        if budget_item.save
            render json: budget_item
        else 
            render json: {errors: budget_item.errors.full_messages}
        end

    end

    # do we need this method?
    def show
        budget_item = BudgetItem.find(params[:id])
        render json: budget_item
    end

    def update
        budget_item = budget_item.find(params[:id])
        if budget_item.update(budget_item_params)
            render json: budget_item
        else  
            flash[:messages] = budget_item.errors.full_messages
            render json: budget_item
        end
    end

    def destroy
        budget_item = BudgetItem.find(params[:id])
        budget_item.destroy
        render json: {message: "Successfully Deleted"}
    end

    private

    def budget_item_params
        params.require(:budget_item).permit(:name, :price)
    end

end
