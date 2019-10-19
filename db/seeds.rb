User.destroy_all
BudgetList.destroy_all
BudgetItem.destroy_all


user_a = User.create!(username: "Darrow")
user_c = User.create!(username: "Daniel")
user_b = User.create!(username: "Belinda")

list_a = BudgetList.create!(title: "Moving Out", total_budget: 2000, user: user_a)
list_b = BudgetList.create!(title: "Food", total_budget: 5, user: user_b)
list_c = BudgetList.create!(title: "Party", total_budget: 500, user: user_c)


 
BudgetItem.create!(name: "Moving Truck", price: 200, budget_list: list_a, paid_for: false)
BudgetItem.create!(name: "Couch", price: 100, budget_list: list_a, paid_for: false)
BudgetItem.create!(name: "Microwave", price: 50, budget_list: list_a, paid_for: false)
BudgetItem.create!(name: "Fridge", price: 700, budget_list: list_a, paid_for: false)

