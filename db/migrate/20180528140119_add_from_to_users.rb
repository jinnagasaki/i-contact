class AddFromToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :from, :string
  end
end
