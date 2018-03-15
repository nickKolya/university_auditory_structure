@room ||= locals[:object]

object @room => :room

attributes *@room.class.attribute_names

node(:room_type)  { @room.class.name }
child(:base_room) { attributes *BaseRoom.attribute_names }
