class AddTwToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :tw, :string
  end
end
