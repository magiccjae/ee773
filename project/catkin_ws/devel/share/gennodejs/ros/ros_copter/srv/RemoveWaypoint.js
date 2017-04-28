// Auto-generated. Do not edit!

// (in-package ros_copter.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RemoveWaypointRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.front = null;
    }
    else {
      if (initObj.hasOwnProperty('front')) {
        this.front = initObj.front
      }
      else {
        this.front = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoveWaypointRequest
    // Serialize message field [front]
    bufferOffset = _serializer.bool(obj.front, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoveWaypointRequest
    let len;
    let data = new RemoveWaypointRequest(null);
    // Deserialize message field [front]
    data.front = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_copter/RemoveWaypointRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '676ebc8a66a9b28b5a67383251f04ff0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    bool front
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RemoveWaypointRequest(null);
    if (msg.front !== undefined) {
      resolved.front = msg.front;
    }
    else {
      resolved.front = false
    }

    return resolved;
    }
};

class RemoveWaypointResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoveWaypointResponse
    // Serialize message field [length]
    bufferOffset = _serializer.int32(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoveWaypointResponse
    let len;
    let data = new RemoveWaypointResponse(null);
    // Deserialize message field [length]
    data.length = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_copter/RemoveWaypointResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f815b7d03bf050cdebde4eab45424862';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 length
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RemoveWaypointResponse(null);
    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: RemoveWaypointRequest,
  Response: RemoveWaypointResponse,
  md5sum() { return '8e64718d0fc1826ffd884d37ef95c787'; },
  datatype() { return 'ros_copter/RemoveWaypoint'; }
};
