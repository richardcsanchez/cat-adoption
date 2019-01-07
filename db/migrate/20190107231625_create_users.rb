class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.password_digest :password
      t.string :name
      t.integer :money
      t.boolean :admin
    end
  end
end
