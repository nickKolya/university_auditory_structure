class CreateOfficeSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :office_spaces, id: :uuid do |t|
      t.boolean :emergency_exit, default: false, null: false
      t.integer :number_of_cumputers, default: 0, null: false
      t.integer :number_of_printers, default: 0, null: false
      t.integer :number_of_phones, default: 0, null: false
      t.integer :number_of_bookcases, default: 0, null: false
      t.integer :number_of_organizer, default: 0, null: false
      t.integer :number_of_clocks, default: 0, null: false
      t.integer :number_of_tvs, default: 0, null: false
      # t.uuid    :base_room_id, index: true

      t.timestamps
    end
  end
end
