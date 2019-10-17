class BudgetList < ApplicationRecord
  belongs_to :user
  has_many :budget_items
end
