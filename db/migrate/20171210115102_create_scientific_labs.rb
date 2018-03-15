class CreateScientificLabs < ActiveRecord::Migration[5.1]
  def change
    create_table :scientific_labs, id: :uuid do |t|
      t.integer :number_of_test_tubes, default: 0, null: false
      t.integer :number_of_microscopes, default: 0, null: false
      t.integer :number_of_shredders, default: 0, null: false
      t.integer :number_of_stands, default: 0, null: false
      # t.uuid    :base_room_id, index: true

      t.timestamps
    end
  end
end
