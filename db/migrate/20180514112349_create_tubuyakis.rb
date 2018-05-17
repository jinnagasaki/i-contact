class CreateTubuyakis < ActiveRecord::Migration[5.1]
  def change
    create_table :tubuyakis do |t|
      t.integer :user_id
      t.string :content

      t.timestamps

      t.index :user_id
      t.index :created_at
    end
  end
end
