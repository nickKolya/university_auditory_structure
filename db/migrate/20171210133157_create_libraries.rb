class CreateLibraries < ActiveRecord::Migration[5.1]
  def change
    create_table :libraries, id: :uuid do |t|
      t.integer :number_of_shelves, default: 0, null: false # кількість стелажів
      t.integer :number_of_benches, default: 0, null: false
      t.integer :number_of_computers, default: 0, null: false
      t.integer :number_of_printers, default: 0, null: false
      t.integer :number_of_speakers, default: 0, null: false
      t.integer :number_of_headphones, default: 0, null: false
      t.integer :number_of_blackboards, default: 0, null: false
      t.boolean :emergency_exit, default: false, null: false
      t.boolean :plants, default: false, null: false
      # t.uuid    :base_room_id, index: true

      t.timestamps
    end
  end
end
