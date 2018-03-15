module Rooms
  class Update < Create
    include FinderHelper

    def fetch_result
      @result = fetch_target

      super
    end

    def base_room
      @base_room ||= result.base_room.tap do |br|
        br.assign_attributes(base_room_attrs)
      end
    end

    def room
      @room ||= result.tap do |ro|
        ro.assign_attributes(room_attrs.merge(base_room: base_room))
      end
    end

    # def room_object
    #   @room_object ||= model_class.find(params[:id])
    # end

    def consider_all_rooms?
      true
    end
  end
end
