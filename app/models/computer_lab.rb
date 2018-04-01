class ComputerLab < ApplicationRecord
  include BaseRoomPersistance

  category_name Category::SCIENTIFIC_PREMISES
end
