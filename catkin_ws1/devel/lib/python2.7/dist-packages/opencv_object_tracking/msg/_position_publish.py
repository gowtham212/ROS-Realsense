# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from opencv_object_tracking/position_publish.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class position_publish(genpy.Message):
  _md5sum = "6fff6255329776d371aac32c4bd148c0"
  _type = "opencv_object_tracking/position_publish"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Point[] Position_XYZ
uint16 center_pixel_x
uint16 center_pixel_y
uint8 counter

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
"""
  __slots__ = ['Position_XYZ','center_pixel_x','center_pixel_y','counter']
  _slot_types = ['geometry_msgs/Point[]','uint16','uint16','uint8']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Position_XYZ,center_pixel_x,center_pixel_y,counter

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(position_publish, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.Position_XYZ is None:
        self.Position_XYZ = []
      if self.center_pixel_x is None:
        self.center_pixel_x = 0
      if self.center_pixel_y is None:
        self.center_pixel_y = 0
      if self.counter is None:
        self.counter = 0
    else:
      self.Position_XYZ = []
      self.center_pixel_x = 0
      self.center_pixel_y = 0
      self.counter = 0

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
      length = len(self.Position_XYZ)
      buff.write(_struct_I.pack(length))
      for val1 in self.Position_XYZ:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_2HB().pack(_x.center_pixel_x, _x.center_pixel_y, _x.counter))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.Position_XYZ is None:
        self.Position_XYZ = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.Position_XYZ = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.Position_XYZ.append(val1)
      _x = self
      start = end
      end += 5
      (_x.center_pixel_x, _x.center_pixel_y, _x.counter,) = _get_struct_2HB().unpack(str[start:end])
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
      length = len(self.Position_XYZ)
      buff.write(_struct_I.pack(length))
      for val1 in self.Position_XYZ:
        _x = val1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_2HB().pack(_x.center_pixel_x, _x.center_pixel_y, _x.counter))
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
      if self.Position_XYZ is None:
        self.Position_XYZ = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.Position_XYZ = []
      for i in range(0, length):
        val1 = geometry_msgs.msg.Point()
        _x = val1
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        self.Position_XYZ.append(val1)
      _x = self
      start = end
      end += 5
      (_x.center_pixel_x, _x.center_pixel_y, _x.counter,) = _get_struct_2HB().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2HB = None
def _get_struct_2HB():
    global _struct_2HB
    if _struct_2HB is None:
        _struct_2HB = struct.Struct("<2HB")
    return _struct_2HB
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
