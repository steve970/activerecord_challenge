class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :account_id
      t.integer :amount_in_cents
      t.integer :transaction_type_id
      t.datetime :occurred_at
    end
  end
end
