class AddImageToTubuyakis < ActiveRecord::Migration[5.1]
  def change
    add_column :tubuyakis, :image, :string
  end
end
