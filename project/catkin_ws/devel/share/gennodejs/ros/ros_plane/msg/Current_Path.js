// Auto-generated. Do not edit!

// (in-package ros_plane.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Current_Path {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flag = null;
      this.Va_d = null;
      this.r = null;
      this.q = null;
      this.c = null;
      this.rho = null;
      this.lambda = null;
    }
    else {
      if (initObj.hasOwnProperty('flag')) {
        this.flag = initObj.flag
      }
      else {
        this.flag = false;
      }
      if (initObj.hasOwnProperty('Va_d')) {
        this.Va_d = initObj.Va_d
      }
      else {
        this.Va_d = 0.0;
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('q')) {
        this.q = initObj.q
      }
      else {
        this.q = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('c')) {
        this.c = initObj.c
      }
      else {
        this.c = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('rho')) {
        this.rho = initObj.rho
      }
      else {
        this.rho = 0.0;
      }
      if (initObj.hasOwnProperty('lambda')) {
        this.lambda = initObj.lambda
      }
      else {
        this.lambda = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Current_Path
    // Serialize message field [flag]
    bufferOffset = _serializer.bool(obj.flag, buffer, bufferOffset);
    // Serialize message field [Va_d]
    bufferOffset = _serializer.float32(obj.Va_d, buffer, bufferOffset);
    // Check that the constant length array field [r] has the right length
    if (obj.r.length !== 3) {
      throw new Error('Unable to serialize array field r - length must be 3')
    }
    // Serialize message field [r]
    bufferOffset = _arraySerializer.float32(obj.r, buffer, bufferOffset, 3);
    // Check that the constant length array field [q] has the right length
    if (obj.q.length !== 3) {
      throw new Error('Unable to serialize array field q - length must be 3')
    }
    // Serialize message field [q]
    bufferOffset = _arraySerializer.float32(obj.q, buffer, bufferOffset, 3);
    // Check that the constant length array field [c] has the right length
    if (obj.c.length !== 3) {
      throw new Error('Unable to serialize array field c - length must be 3')
    }
    // Serialize message field [c]
    bufferOffset = _arraySerializer.float32(obj.c, buffer, bufferOffset, 3);
    // Serialize message field [rho]
    bufferOffset = _serializer.float32(obj.rho, buffer, bufferOffset);
    // Serialize message field [lambda]
    bufferOffset = _serializer.int8(obj.lambda, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Current_Path
    let len;
    let data = new Current_Path(null);
    // Deserialize message field [flag]
    data.flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Va_d]
    data.Va_d = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r]
    data.r = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [q]
    data.q = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [c]
    data.c = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [rho]
    data.rho = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lambda]
    data.lambda = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 46;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_plane/Current_Path';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4af1751f6b464a5a3cb09551a027be48';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Current path output from the path manager, input to path follower
    
    # @warning Va_d have always to be valid, r and q need to be valid if flag is true, c rho and lambda need to be valid otherwise
    bool flag		# Inicates strait line or orbital path (true is line, false is orbit)
    float32 Va_d		# Desired airspeed (m/s)
    float32[3] r		# Vector to origin of straight line path (m)
    float32[3] q		# Unit vector, desired direction of travel for line path
    float32[3] c		# Center of orbital path (m)
    float32 rho		# Radius of orbital path (m)
    int8 lambda		# Direction of orbital path (clockwise is 1, counterclockwise is -1)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Current_Path(null);
    if (msg.flag !== undefined) {
      resolved.flag = msg.flag;
    }
    else {
      resolved.flag = false
    }

    if (msg.Va_d !== undefined) {
      resolved.Va_d = msg.Va_d;
    }
    else {
      resolved.Va_d = 0.0
    }

    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = new Array(3).fill(0)
    }

    if (msg.q !== undefined) {
      resolved.q = msg.q;
    }
    else {
      resolved.q = new Array(3).fill(0)
    }

    if (msg.c !== undefined) {
      resolved.c = msg.c;
    }
    else {
      resolved.c = new Array(3).fill(0)
    }

    if (msg.rho !== undefined) {
      resolved.rho = msg.rho;
    }
    else {
      resolved.rho = 0.0
    }

    if (msg.lambda !== undefined) {
      resolved.lambda = msg.lambda;
    }
    else {
      resolved.lambda = 0
    }

    return resolved;
    }
};

module.exports = Current_Path;
