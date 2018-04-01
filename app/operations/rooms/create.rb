class Rooms::Create < Rooms::Base
  SYSTEM_FIELDS = %w[id created_at updated_at].freeze

  def fetch_result
    return if errors.any?
    return unless valid_model_type?

    save_room || allocate_errors
    room
  end

  def base_room
    @base_room ||= BaseRoom.new(base_room_attrs)
  end

  def room
    @room ||= model_class.new(room_attrs.merge(base_room: base_room))
  end

  private

  def save_room
    assign_category

    base_room.save && room.save if base_room.valid? && room.valid?
  end

  def assign_category
    base_room.update(category: category)
  end

  def category
    @category ||= Category.find_or_create_by(name: room.category_name)
  end

  def base_room_attrs
    params.require(:room).permit(
      *(BaseRoom.attribute_names - SYSTEM_FIELDS)
    )
  end

  def room_attrs
    params.require(:room).permit(
      *(model_class.attribute_names - SYSTEM_FIELDS)
    )
  end

  def valid_model_type?
    return true if consider_all_rooms? || !all_model?

    @errors << "Cannot process model with '#{model}' room type"
    false
  end

  def allocate_errors
    @errors << base_room.errors.full_messages.presence
    @errors << room.errors.full_messages.presence
    @errors.compact!
  end

  def consider_all_rooms?
    false
  end
end
