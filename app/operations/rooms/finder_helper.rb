module Rooms::FinderHelper
  RECORD_NOT_FOUND_STATUS = 404

  def fetch_target
    return (base_room_join || room_null_object).target if all_model?

    model_class.find_by(id: params[:id]) || record_not_found(params[:id], model)
  end

  def base_room_join
    BaseRoomJoin.find_by(target_id: params[:id])
  end

  def record_not_found(id, type)
    @errors << record_not_found_msg(id, type)
    @status = 404
  end

  def record_not_found_msg(id, type)
    "Couldn't find record with id: '#{id}' and room type: '#{type}'"
  end
end
