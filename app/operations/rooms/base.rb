class Rooms::Base < BaseOperation
  ALLOWED_ROOMS = %w[
    auditory computer_lab conference_room dining_room library museum office_space
    sanitary_room scientific_lab wardrobe
  ].freeze

  def call
    super

    @result = fetch_result
    self
  end

  def allowed_model_names
    ALLOWED_ROOMS
  end

  def fetch_result
    raise NotImplementerdError, 'For subclasses only'
  end

  def consider_all_rooms?
    true
  end
end
