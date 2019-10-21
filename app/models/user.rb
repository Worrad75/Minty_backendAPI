class User < ApplicationRecord
    has_many :budget_lists
    has_many :budget_items, through: :budget_lists
    has_secure_password
    validates :username, uniqueness: true, presence: true
    validates :password, presence: true, length: { minimum: 6 }
end
