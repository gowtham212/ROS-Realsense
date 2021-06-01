// Auto-generated. Do not edit!

// (in-package object_detection_3d_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let OrientedBox = require('./OrientedBox.js');

//-----------------------------------------------------------

class DetectedObject3D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.box = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('box')) {
        this.box = initObj.box
      }
      else {
        this.box = new OrientedBox();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectedObject3D
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [box]
    bufferOffset = OrientedBox.serialize(obj.box, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectedObject3D
    let len;
    let data = new DetectedObject3D(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [box]
    data.box = OrientedBox.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'object_detection_3d_msgs/DetectedObject3D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '313c73372cba8ca3b40d40c0f7d90ff3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    OrientedBox box
    
    ================================================================================
    MSG: object_detection_3d_msgs/OrientedBox
    # Pose = position of centroid of object + orientation of object.
    geometry_msgs/Pose pose
    
    # Dimensions of the box.
    float64 width
    float64 height
    float64 depth
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectedObject3D(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.box !== undefined) {
      resolved.box = OrientedBox.Resolve(msg.box)
    }
    else {
      resolved.box = new OrientedBox()
    }

    return resolved;
    }
};

module.exports = DetectedObject3D;
