class CreateWardrobes < ActiveRecord::Migration[5.1]
  def change
    create_table :wardrobes, id: :uuid do |t|
      t.integer :number_of_benches, default: 0, null: false
      t.integer :number_of_hangers, default: 0, null: false
      t.integer :number_of_coat_tags, default: 0, null: false
      t.integer :number_of_locked_cells, default: 0, null: false
      t.integer :number_of_mirrors, default: 0, null: false
      # t.uuid    :base_room_id, index: true

      t.timestamps
    end
  end
end
