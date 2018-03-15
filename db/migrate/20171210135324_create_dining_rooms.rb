class CreateDiningRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :dining_rooms, id: :uuid do |t|
      t.integer :number_of_benches, default: 0, null: false
      t.integer :number_of_ovens, default: 0, null: false
      t.integer :number_of_cookers, default: 0, null: false
      t.integer :number_of_kettles, default: 0, null: false
      t.integer :number_of_pans, default: 0, null: false
      t.integer :number_of_cash_registers, default: 0, null: false
      t.boolean :emergency_exit, default: false, null: false
      # t.uuid    :base_room_id, index: true

      t.timestamps
    end
  end
end
