class BaseRoomJoin < ApplicationRecord
  belongs_to :base_room, dependent: :destroy
  belongs_to :target, polymorphic: true
end
