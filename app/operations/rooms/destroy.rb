module Rooms
  class Destroy < Show
    include FinderHelper

    def call
      super

      errors.any? || destroy_room
      self
    end

    def destroy_room
      result.destroy

      if result.persisted?
        @errors << result.errors.full_messages
      else
        @messages << "#{result.class} with id: '#{params[:id]}' was successfully deleted"
        @status = 200
      end
    end

    def consider_all_rooms?
      true
    end
  end
end
