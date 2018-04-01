namespace :db do
  task add_categories: :environment do
    Category::PREMISES.each { |premise| Category.create(name: premise) }

    BaseRoomJoin.eager_load(:base_room).each do |base_room_join|
      base_room_join.base_room.update(
        category: Category.find_by_name(base_room_join.target.category_name)
      )
    end
  end
end
