class CreateConferenceRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :conference_rooms, id: :uuid do |t|
      t.integer :number_of_microphones, default: 0, null: false
      t.integer :number_of_monitorss, default: 0, null: false
      t.boolean :translation_equipment, default: false, null: false
      t.boolean :stereo_system, default: false, null: false
      t.boolean :flipchart, default: false, null: false
      t.boolean :light_system, default: false, null: false
      t.boolean :dais, default: false, null: false
      t.boolean :coffee_break, default: false, null: false
      t.boolean :wardrobe, default: false, null: false
      t.boolean :balcony, default: false, null: false
      t.string  :type, default: 'ConferenceRoom', null: false
      # t.uuid    :base_room_id, index: true

      t.timestamps
    end
  end
end
