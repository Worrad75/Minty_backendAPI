class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :budget_lists
  has_many :budget_items
end
