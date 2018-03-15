class CreateBaseRooms < ActiveRecord::Migration[5.1]
  def change
    enable_uuid!

    create_table :base_rooms, id: :uuid do |t|
      t.string  :number, null: false, default: ''
      t.string  :name, null: false, default: ''
      t.float   :square
      t.string  :type, default: 'BaseRoom', null: false
      t.boolean :trash_bin, null: false, default: false
      t.boolean :wifi, null: false, default: false
      t.boolean :projector, null: false, default: false
      t.boolean :air_conditioner, null: false, default: false
      t.integer :number_of_tables, null: false, default: 0
      t.integer :number_of_chairs, null: false, default: 0
      t.integer :number_of_sockets, null: false, default: 0
      t.integer :number_of_switches, null: false, default: 0
      t.integer :number_of_seats, null: false, default: 0
      t.integer :number_of_entrances, null: false, default: 0
      t.integer :number_of_windowses, null: false, default: 0
      t.integer :number_of_lights, null: false, default: 0
      t.integer :number_of_rooms, null: false, default: 0
      t.jsonb   :additional_info, null: false, default: '{}'

      t.timestamps
    end

    add_index :base_rooms, :additional_info, using: :gin
  end

  private

  def enable_uuid!
    enable_extension 'pgcrypto'
  end
end
