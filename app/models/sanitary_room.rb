class SanitaryRoom < ApplicationRecord
  include BaseRoomPersistance

  category_name Category::GENERAL_USE_PREMISES
end
