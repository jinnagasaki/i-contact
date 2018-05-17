class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :tubuyaki_id

      t.timestamps

      t.index :user_id
      t.index :tubuyaki_id
      t.index :created_at
    end
  end
end
