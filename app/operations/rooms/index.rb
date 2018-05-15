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

    return @base_rooms unless params[:q]

    if (sq = params[:q].to_f) > 0
      @base_rooms = @base_rooms.
        ransack(square_or_number_of_tables_or_number_of_seats_eq: sq).result

      return @base_rooms if @base_rooms.any?
    end

    @base_rooms = @base_rooms.ransack(name_or_number_start: params[:q]).result
  end
end
