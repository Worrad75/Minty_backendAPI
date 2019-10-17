class User < ApplicationRecord
    has_many :budget_lists
    has_many :budget_items, through: :budget_lists
end
