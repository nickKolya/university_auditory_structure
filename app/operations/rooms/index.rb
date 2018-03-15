class Rooms::Index < Rooms::Base
  def fetch_result
    return BaseRoomJoin.eager_load(:base_room).preload(:target).map(&:target) if all_model?

    model_class.all
  end
end
