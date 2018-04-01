# frozen_string_literal: true

class Category < ApplicationRecord
  PREMISES = [
    SCIENTIFIC_PREMISES = 'scientific_premises',
    SERVICE_PREMISES = 'service_premises',
    GENERAL_USE_PREMISES = 'general_use_premises',
    CONFERENCE_ROOMS = 'conference_rooms',
    MUSEUMS = 'museums'
  ].freeze

  has_many  :base_rooms

  validates :name, uniqueness: true, presence: true, inclusion: { in: PREMISES }
end
