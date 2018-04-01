module BaseRoomPersistance
  extend ActiveSupport::Concern

  included do
    has_one :base_room_join, as: :target, dependent: :destroy
    has_one :base_room, through: :base_room_join

    has_one :category, through: :base_room
  end
end
