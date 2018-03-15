module Rooms
  class Show < Base
    include FinderHelper

    alias_method :fetch_result, :fetch_target
  end
end
