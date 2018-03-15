class BaseRoom < ApplicationRecord
  has_one :base_room_join
  has_one :target, through: :base_room_join

  serialize :additional_info, JSON
end
