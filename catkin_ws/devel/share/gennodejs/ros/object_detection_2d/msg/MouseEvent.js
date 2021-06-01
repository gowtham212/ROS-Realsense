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

class MouseEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.button = null;
      this.position = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('button')) {
        this.button = initObj.button
      }
      else {
        this.button = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Point2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MouseEvent
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [button]
    bufferOffset = _serializer.uint8(obj.button, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Point2D.serialize(obj.position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MouseEvent
    let len;
    let data = new MouseEvent(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [button]
    data.button = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Point2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'object_detection_2d/MouseEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '57bba32321c89c59bbda1bc21239af2c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Types.
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MouseEvent(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.button !== undefined) {
      resolved.button = msg.button;
    }
    else {
      resolved.button = 0
    }

    if (msg.position !== undefined) {
      resolved.position = Point2D.Resolve(msg.position)
    }
    else {
      resolved.position = new Point2D()
    }

    return resolved;
    }
};

// Constants for message
MouseEvent.Constants = {
  PRESS: 0,
  MOVE: 1,
  RELEASE: 2,
  NO_BUTTON: 0,
  LEFT_BUTTON: 1,
  MIDDLE_BUTTON: 2,
  RIGHT_BUTTON: 3,
  UNKNOWN_BUTTON: 4,
}

module.exports = MouseEvent;
