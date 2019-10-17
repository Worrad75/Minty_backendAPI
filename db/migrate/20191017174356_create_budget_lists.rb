class CreateBudgetLists < ActiveRecord::Migration[6.0]
  def change
    create_table :budget_lists do |t|
      t.string :title
      t.integer :total_budget
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
