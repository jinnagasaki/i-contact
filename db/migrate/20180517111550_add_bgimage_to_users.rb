class AddBgimageToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :bgimage, :string
  end
end
