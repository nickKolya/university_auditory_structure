class Library < ApplicationRecord
  include BaseRoomPersistance

  category_name Category::GENERAL_USE_PREMISES
end
