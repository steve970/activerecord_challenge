class CreateAccountHolders < ActiveRecord::Migration
  def change
    create_table :account_holders do |t|
      t.string :first_name, limit: 20
      t.string :last_name, limit: 30
      t.string :email, limit: 100
      t.string :password
    end
  end
end
