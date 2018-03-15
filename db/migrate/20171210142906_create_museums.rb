class CreateMuseums < ActiveRecord::Migration[5.1]
  def change
    create_table :museums, id: :uuid do |t|
      t.integer :number_of_exhibits, default: 0, null: false
      t.integer :number_of_floors, default: 0, null: false
      t.integer :number_of_computers, default: 0, null: false
      t.boolean :national_treasures, default: false, null: false # національні надбання
      t.boolean :background_music, default: false, null: false
      t.boolean :presence_of_guide, default: false, null: false
      t.boolean :emergency_exit, default: false, null: false
      # t.uuid    :base_room_id, index: true

      t.timestamps
    end
  end
end
