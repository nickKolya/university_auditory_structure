class CreateBaseRoomJoins < ActiveRecord::Migration[5.1]
  def change
    create_table :base_room_joins, id: :uuid do |t|
      t.uuid   :base_room_id, index: true, null: false
      t.uuid   :target_id, index: true, null: false
      t.string :target_type, null: false

      t.timestamps
    end
  end
end
