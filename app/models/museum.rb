class Museum < ApplicationRecord
  include BaseRoomPersistance

  category_name Category::MUSEUMS
end
