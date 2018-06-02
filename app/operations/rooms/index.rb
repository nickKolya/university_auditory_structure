class Rooms::Index < Rooms::Base
  def fetch_result
    res = BaseRoomJoin.where(base_room_id: base_rooms.ids).
            eager_load(:base_room).preload(:target)
    res = res.where(target_type: model_class.to_s) unless all_model?
    res.map(&:target)
  end

  private

  def base_rooms
    return @base_rooms if defined? @base_rooms

    @base_rooms = BaseRoom.all

    return @base_rooms unless query

    @base_rooms = @base_rooms.where(id: rooms_by_equality_ids | rooms_by_containing_ids)
  end

  def search_string
    return @search_string if defined? @search_string

    @search_string = 0 if query == '0'
    @search_string = query.to_f if query.to_f > 0
    @search_string ||= -1
  end

  def query
    return @query if defined? @query

    @query = params[:q]
  end

  def rooms_by_equality_ids
    return [] if search_string == -1

    @base_rooms.
      ransack(square_or_number_of_tables_or_number_of_seats_eq: search_string).
      result.ids
  end

  def rooms_by_containing_ids
    @base_rooms.ransack(name_or_number_cont: query).result.ids
  end
end
