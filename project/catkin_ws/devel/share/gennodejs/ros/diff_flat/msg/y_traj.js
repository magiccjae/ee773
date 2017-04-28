// Auto-generated. Do not edit!

// (in-package diff_flat.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class y_traj {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pn = null;
      this.pe = null;
      this.pd = null;
      this.psi = null;
      this.pn_dot = null;
      this.pe_dot = null;
      this.pd_dot = null;
      this.psi_dot = null;
      this.pn_ddot = null;
      this.pe_ddot = null;
      this.pd_ddot = null;
      this.psi_ddot = null;
    }
    else {
      if (initObj.hasOwnProperty('pn')) {
        this.pn = initObj.pn
      }
      else {
        this.pn = 0.0;
      }
      if (initObj.hasOwnProperty('pe')) {
        this.pe = initObj.pe
      }
      else {
        this.pe = 0.0;
      }
      if (initObj.hasOwnProperty('pd')) {
        this.pd = initObj.pd
      }
      else {
        this.pd = 0.0;
      }
      if (initObj.hasOwnProperty('psi')) {
        this.psi = initObj.psi
      }
      else {
        this.psi = 0.0;
      }
      if (initObj.hasOwnProperty('pn_dot')) {
        this.pn_dot = initObj.pn_dot
      }
      else {
        this.pn_dot = 0.0;
      }
      if (initObj.hasOwnProperty('pe_dot')) {
        this.pe_dot = initObj.pe_dot
      }
      else {
        this.pe_dot = 0.0;
      }
      if (initObj.hasOwnProperty('pd_dot')) {
        this.pd_dot = initObj.pd_dot
      }
      else {
        this.pd_dot = 0.0;
      }
      if (initObj.hasOwnProperty('psi_dot')) {
        this.psi_dot = initObj.psi_dot
      }
      else {
        this.psi_dot = 0.0;
      }
      if (initObj.hasOwnProperty('pn_ddot')) {
        this.pn_ddot = initObj.pn_ddot
      }
      else {
        this.pn_ddot = 0.0;
      }
      if (initObj.hasOwnProperty('pe_ddot')) {
        this.pe_ddot = initObj.pe_ddot
      }
      else {
        this.pe_ddot = 0.0;
      }
      if (initObj.hasOwnProperty('pd_ddot')) {
        this.pd_ddot = initObj.pd_ddot
      }
      else {
        this.pd_ddot = 0.0;
      }
      if (initObj.hasOwnProperty('psi_ddot')) {
        this.psi_ddot = initObj.psi_ddot
      }
      else {
        this.psi_ddot = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type y_traj
    // Serialize message field [pn]
    bufferOffset = _serializer.float64(obj.pn, buffer, bufferOffset);
    // Serialize message field [pe]
    bufferOffset = _serializer.float64(obj.pe, buffer, bufferOffset);
    // Serialize message field [pd]
    bufferOffset = _serializer.float64(obj.pd, buffer, bufferOffset);
    // Serialize message field [psi]
    bufferOffset = _serializer.float64(obj.psi, buffer, bufferOffset);
    // Serialize message field [pn_dot]
    bufferOffset = _serializer.float64(obj.pn_dot, buffer, bufferOffset);
    // Serialize message field [pe_dot]
    bufferOffset = _serializer.float64(obj.pe_dot, buffer, bufferOffset);
    // Serialize message field [pd_dot]
    bufferOffset = _serializer.float64(obj.pd_dot, buffer, bufferOffset);
    // Serialize message field [psi_dot]
    bufferOffset = _serializer.float64(obj.psi_dot, buffer, bufferOffset);
    // Serialize message field [pn_ddot]
    bufferOffset = _serializer.float64(obj.pn_ddot, buffer, bufferOffset);
    // Serialize message field [pe_ddot]
    bufferOffset = _serializer.float64(obj.pe_ddot, buffer, bufferOffset);
    // Serialize message field [pd_ddot]
    bufferOffset = _serializer.float64(obj.pd_ddot, buffer, bufferOffset);
    // Serialize message field [psi_ddot]
    bufferOffset = _serializer.float64(obj.psi_ddot, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type y_traj
    let len;
    let data = new y_traj(null);
    // Deserialize message field [pn]
    data.pn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pe]
    data.pe = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pd]
    data.pd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [psi]
    data.psi = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pn_dot]
    data.pn_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pe_dot]
    data.pe_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pd_dot]
    data.pd_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [psi_dot]
    data.psi_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pn_ddot]
    data.pn_ddot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pe_ddot]
    data.pe_ddot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pd_ddot]
    data.pd_ddot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [psi_ddot]
    data.psi_ddot = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'diff_flat/y_traj';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4e248087d14e75e385030970108f437';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 pn
    float64 pe
    float64 pd
    float64 psi
    float64 pn_dot
    float64 pe_dot
    float64 pd_dot
    float64 psi_dot
    float64 pn_ddot
    float64 pe_ddot
    float64 pd_ddot
    float64 psi_ddot
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new y_traj(null);
    if (msg.pn !== undefined) {
      resolved.pn = msg.pn;
    }
    else {
      resolved.pn = 0.0
    }

    if (msg.pe !== undefined) {
      resolved.pe = msg.pe;
    }
    else {
      resolved.pe = 0.0
    }

    if (msg.pd !== undefined) {
      resolved.pd = msg.pd;
    }
    else {
      resolved.pd = 0.0
    }

    if (msg.psi !== undefined) {
      resolved.psi = msg.psi;
    }
    else {
      resolved.psi = 0.0
    }

    if (msg.pn_dot !== undefined) {
      resolved.pn_dot = msg.pn_dot;
    }
    else {
      resolved.pn_dot = 0.0
    }

    if (msg.pe_dot !== undefined) {
      resolved.pe_dot = msg.pe_dot;
    }
    else {
      resolved.pe_dot = 0.0
    }

    if (msg.pd_dot !== undefined) {
      resolved.pd_dot = msg.pd_dot;
    }
    else {
      resolved.pd_dot = 0.0
    }

    if (msg.psi_dot !== undefined) {
      resolved.psi_dot = msg.psi_dot;
    }
    else {
      resolved.psi_dot = 0.0
    }

    if (msg.pn_ddot !== undefined) {
      resolved.pn_ddot = msg.pn_ddot;
    }
    else {
      resolved.pn_ddot = 0.0
    }

    if (msg.pe_ddot !== undefined) {
      resolved.pe_ddot = msg.pe_ddot;
    }
    else {
      resolved.pe_ddot = 0.0
    }

    if (msg.pd_ddot !== undefined) {
      resolved.pd_ddot = msg.pd_ddot;
    }
    else {
      resolved.pd_ddot = 0.0
    }

    if (msg.psi_ddot !== undefined) {
      resolved.psi_ddot = msg.psi_ddot;
    }
    else {
      resolved.psi_ddot = 0.0
    }

    return resolved;
    }
};

module.exports = y_traj;
