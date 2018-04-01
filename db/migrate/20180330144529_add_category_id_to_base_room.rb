class AddCategoryIdToBaseRoom < ActiveRecord::Migration[5.1]
  def change
    add_column :base_rooms, :category_id, :uuid, index: true
  end
end
