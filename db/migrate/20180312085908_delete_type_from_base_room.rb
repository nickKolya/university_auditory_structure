class DeleteTypeFromBaseRoom < ActiveRecord::Migration[5.1]
  def change
    remove_column :base_rooms, :type, :string, default: 'BaseRoom', null: false
  end
end
