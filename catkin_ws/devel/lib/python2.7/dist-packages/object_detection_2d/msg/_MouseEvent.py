# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from object_detection_2d/MouseEvent.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import object_detection_2d.msg

class MouseEvent(genpy.Message):
  _md5sum = "57bba32321c89c59bbda1bc21239af2c"
  _type = "object_detection_2d/MouseEvent"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Types.
uint8 PRESS	= 0
uint8 MOVE	= 1
uint8 RELEASE	= 2

# Buttons.
uint8 NO_BUTTON		= 0
uint8 LEFT_BUTTON	= 1
uint8 MIDDLE_BUTTON	= 2
uint8 RIGHT_BUTTON	= 3
uint8 UNKNOWN_BUTTON	= 4

uint8 type
uint8 button	# button that caused the event (== NO_BUTTON for MOVE)

# Mouse position when event was generated.
object_detection_2d/Point2D position

================================================================================
MSG: object_detection_2d/Point2D
int32 x
int32 y
"""
  # Pseudo-constants
  PRESS = 0
  MOVE = 1
  RELEASE = 2
  NO_BUTTON = 0
  LEFT_BUTTON = 1
  MIDDLE_BUTTON = 2
  RIGHT_BUTTON = 3
  UNKNOWN_BUTTON = 4

  __slots__ = ['type','button','position']
  _slot_types = ['uint8','uint8','object_detection_2d/Point2D']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       type,button,position

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MouseEvent, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.type is None:
        self.type = 0
      if self.button is None:
        self.button = 0
      if self.position is None:
        self.position = object_detection_2d.msg.Point2D()
    else:
      self.type = 0
      self.button = 0
      self.position = object_detection_2d.msg.Point2D()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2B2i().pack(_x.type, _x.button, _x.position.x, _x.position.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.position is None:
        self.position = object_detection_2d.msg.Point2D()
      end = 0
      _x = self
      start = end
      end += 10
      (_x.type, _x.button, _x.position.x, _x.position.y,) = _get_struct_2B2i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2B2i().pack(_x.type, _x.button, _x.position.x, _x.position.y))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.position is None:
        self.position = object_detection_2d.msg.Point2D()
      end = 0
      _x = self
      start = end
      end += 10
      (_x.type, _x.button, _x.position.x, _x.position.y,) = _get_struct_2B2i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B2i = None
def _get_struct_2B2i():
    global _struct_2B2i
    if _struct_2B2i is None:
        _struct_2B2i = struct.Struct("<2B2i")
    return _struct_2B2i
