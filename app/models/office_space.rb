class OfficeSpace < ApplicationRecord
  include BaseRoomPersistance

  category_name Category::SERVICE_PREMISES
end
