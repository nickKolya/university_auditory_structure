class RoomNullObject
  include Rooms::FinderHelper

  attr_reader :attrs

  def initialize(**attrs)
    @attrs = attrs
  end

  def all
    []
  end

  def target(*)
    attrs[:operation].errors << record_not_found_msg(attrs[:id], attrs[:operation].model)
    attrs[:operation].status = RECORD_NOT_FOUND_STATUS
  end
  alias_method :find, :target

  def attribute_names
    []
  end
end
