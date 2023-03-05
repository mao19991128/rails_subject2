class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :image
      t.string :name
      t.text :introduction
      t.integer :fee
      t.date :create_at
      t.string :address
      t.text :detail
      t.integer :user_id

      t.timestamps
    end
  end
end
