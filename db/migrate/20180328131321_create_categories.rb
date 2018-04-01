class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories, id: :uuid do |t|
      t.string :name

      t.timestamps
    end

    populate_categories
  end

  def populate_categories
    Category::PREMISES.each { |premise| Category.create(name: premise) }
  end
end
