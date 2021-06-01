// Auto-generated. Do not edit!

// (in-package object_detection_2d.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2D = require('./Point2D.js');

//-----------------------------------------------------------

class Rect2D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.upper_left = null;
      this.width = null;
      this.height = null;
    }
    else {
      if (initObj.hasOwnProperty('upper_left')) {
        this.upper_left = initObj.upper_left
      }
      else {
        this.upper_left = new Point2D();
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Rect2D
    // Serialize message field [upper_left]
    bufferOffset = Point2D.serialize(obj.upper_left, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.int32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int32(obj.height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Rect2D
    let len;
    let data = new Rect2D(null);
    // Deserialize message field [upper_left]
    data.upper_left = Point2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'object_detection_2d/Rect2D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '40f85e4054f7fc5c03f469651a145434';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    object_detection_2d/Point2D upper_left
    
    int32 width
    int32 height
    
    ================================================================================
    MSG: object_detection_2d/Point2D
    int32 x
    int32 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Rect2D(null);
    if (msg.upper_left !== undefined) {
      resolved.upper_left = Point2D.Resolve(msg.upper_left)
    }
    else {
      resolved.upper_left = new Point2D()
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    return resolved;
    }
};

module.exports = Rect2D;
