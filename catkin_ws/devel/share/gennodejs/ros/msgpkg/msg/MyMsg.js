// Auto-generated. Do not edit!

// (in-package msgpkg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MyMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.first = null;
      this.second = null;
      this.third = null;
      this.text = null;
    }
    else {
      if (initObj.hasOwnProperty('first')) {
        this.first = initObj.first
      }
      else {
        this.first = 0;
      }
      if (initObj.hasOwnProperty('second')) {
        this.second = initObj.second
      }
      else {
        this.second = 0;
      }
      if (initObj.hasOwnProperty('third')) {
        this.third = initObj.third
      }
      else {
        this.third = 0;
      }
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MyMsg
    // Serialize message field [first]
    bufferOffset = _serializer.int32(obj.first, buffer, bufferOffset);
    // Serialize message field [second]
    bufferOffset = _serializer.int32(obj.second, buffer, bufferOffset);
    // Serialize message field [third]
    bufferOffset = _serializer.int32(obj.third, buffer, bufferOffset);
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MyMsg
    let len;
    let data = new MyMsg(null);
    // Deserialize message field [first]
    data.first = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [second]
    data.second = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [third]
    data.third = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.text.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgpkg/MyMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cb9302f78c9ed948d0a985d9594799d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 first
    int32 second
    int32 third
    string text
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MyMsg(null);
    if (msg.first !== undefined) {
      resolved.first = msg.first;
    }
    else {
      resolved.first = 0
    }

    if (msg.second !== undefined) {
      resolved.second = msg.second;
    }
    else {
      resolved.second = 0
    }

    if (msg.third !== undefined) {
      resolved.third = msg.third;
    }
    else {
      resolved.third = 0
    }

    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    return resolved;
    }
};

module.exports = MyMsg;
