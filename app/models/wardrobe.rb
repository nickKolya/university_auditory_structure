class Wardrobe < ApplicationRecord
  include BaseRoomPersistance

  category_name Category::GENERAL_USE_PREMISES
end
