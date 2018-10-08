class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.decimal :amount
      t.date :start_date
      t.date :end_date
      t.boolean :is_income
      t.string :frequency

      t.timestamps
    end
  end
end
