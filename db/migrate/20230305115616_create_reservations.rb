class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :check_in
      t.date :check_out
      t.integer :number
      t.integer :days
      t.integer :sum_fee
      t.datetime :reserved_at
      t.integer :user_id

      t.timestamps
    end
  end
end
