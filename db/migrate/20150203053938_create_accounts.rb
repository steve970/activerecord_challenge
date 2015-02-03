class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :account_holder_id
      t.string :account_type
    end
  end
end
