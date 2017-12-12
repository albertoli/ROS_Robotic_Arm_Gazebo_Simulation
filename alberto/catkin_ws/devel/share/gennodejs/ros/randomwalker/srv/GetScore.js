// Auto-generated. Do not edit!

// (in-package randomwalker.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetScoreRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.row = null;
      this.col = null;
    }
    else {
      if (initObj.hasOwnProperty('row')) {
        this.row = initObj.row
      }
      else {
        this.row = 0;
      }
      if (initObj.hasOwnProperty('col')) {
        this.col = initObj.col
      }
      else {
        this.col = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetScoreRequest
    // Serialize message field [row]
    bufferOffset = _serializer.int32(obj.row, buffer, bufferOffset);
    // Serialize message field [col]
    bufferOffset = _serializer.int32(obj.col, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetScoreRequest
    let len;
    let data = new GetScoreRequest(null);
    // Deserialize message field [row]
    data.row = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [col]
    data.col = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'randomwalker/GetScoreRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0d84ae8c1de5e21d4e0f4c459d2e02dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 row
    int32 col
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetScoreRequest(null);
    if (msg.row !== undefined) {
      resolved.row = msg.row;
    }
    else {
      resolved.row = 0
    }

    if (msg.col !== undefined) {
      resolved.col = msg.col;
    }
    else {
      resolved.col = 0
    }

    return resolved;
    }
};

class GetScoreResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.score = null;
    }
    else {
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetScoreResponse
    // Serialize message field [score]
    bufferOffset = _serializer.int32(obj.score, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetScoreResponse
    let len;
    let data = new GetScoreResponse(null);
    // Deserialize message field [score]
    data.score = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'randomwalker/GetScoreResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ed963831938da1fc8151b77dec7741f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 score
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetScoreResponse(null);
    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetScoreRequest,
  Response: GetScoreResponse,
  md5sum() { return 'd4c39963a439a62ef1b91086c84fd1a8'; },
  datatype() { return 'randomwalker/GetScore'; }
};
