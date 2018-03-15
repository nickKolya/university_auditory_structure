class CreateAuditories < ActiveRecord::Migration[5.1]
  def change
    create_table :auditories, id: :uuid do |t|
      t.integer :number_of_double_tables, default: 0, null: false
      t.integer :number_of_triple_tables, default: 0, null: false
      t.boolean :dais, default: false, null: false
      t.boolean :interactive_whiteboard, default: false, null: false
      # t.uuid    :base_room_id, index: true

      t.timestamps
    end
  end
end
