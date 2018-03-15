class CreateSanitaryRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :sanitary_rooms, id: :uuid do |t|
      t.integer :number_of_brooms, default: 0, null: false
      t.integer :number_of_scoopes, default: 0, null: false # совок
      t.integer :number_of_mops, default: 0, null: false # швабра
      t.integer :number_of_rags, default: 0, null: false # ганчірка
      t.integer :number_of_gloves, default: 0, null: false
      t.integer :number_of_buckets, default: 0, null: false
      t.integer :number_of_mirrors, default: 0, null: false
      # t.uuid    :base_room_id, index: true

      t.timestamps
    end
  end
end
