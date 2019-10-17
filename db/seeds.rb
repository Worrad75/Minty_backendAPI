User.destroy_all
BudgetList.destroy_all
BudgetItem.destroy_all


puts "test"
user_a = User.create!(username: "Darrow")
user_c = User.create!(username: "Daniel")
user_b = User.create!(username: "Belinda")
puts "done making users"


list_a = BudgetList.create!(title: "moving out", total_budget: 200, user: user_a)
list_b = BudgetList.create!(title: "eating fries", total_budget: 5, user: user_b)
list_c = BudgetList.create!(title: "hiring a clown", total_budget: 500, user: user_c)
puts "done making lists"

 
item_a = BudgetItem.create!(name: "uhaul", price: 200, budget_list: list_a, paid_for: false)
item_b = BudgetItem.create!(name: "curly fries", price: 5, budget_list: list_b, paid_for: false)
item_c = BudgetItem.create!(name: "hiring a clown", price: 500, budget_list: list_c, paid_for: false)
puts "done making items"

