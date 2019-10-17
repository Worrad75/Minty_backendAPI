class CreateBudgetItems < ActiveRecord::Migration[6.0]
  def change
    create_table :budget_items do |t|
      t.string :name
      t.integer :price
      t.references :budget_list, null: false, foreign_key: true
      t.boolean :paid_for

      t.timestamps
    end
  end
end
