class ConferenceRoom < ApplicationRecord
  include BaseRoomPersistance

  category_name Category::CONFERENCE_ROOMS
end
