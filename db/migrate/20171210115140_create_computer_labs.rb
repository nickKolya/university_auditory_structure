class CreateComputerLabs < ActiveRecord::Migration[5.1]
  def change
    create_table :computer_labs, id: :uuid do |t|
      t.integer :number_of_computers, default: 0, null: false
      t.boolean :interactive_whiteboard, default: false, null: false
      # t.uuid    :base_room_id, index: true

      t.timestamps
    end
  end
end
