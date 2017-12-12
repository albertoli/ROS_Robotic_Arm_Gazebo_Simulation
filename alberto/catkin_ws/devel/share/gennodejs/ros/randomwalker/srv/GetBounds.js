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

class GetBoundsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetBoundsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetBoundsRequest
    let len;
    let data = new GetBoundsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'randomwalker/GetBoundsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetBoundsRequest(null);
    return resolved;
    }
};

class GetBoundsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num_rows = null;
      this.num_cols = null;
    }
    else {
      if (initObj.hasOwnProperty('num_rows')) {
        this.num_rows = initObj.num_rows
      }
      else {
        this.num_rows = 0;
      }
      if (initObj.hasOwnProperty('num_cols')) {
        this.num_cols = initObj.num_cols
      }
      else {
        this.num_cols = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetBoundsResponse
    // Serialize message field [num_rows]
    bufferOffset = _serializer.int32(obj.num_rows, buffer, bufferOffset);
    // Serialize message field [num_cols]
    bufferOffset = _serializer.int32(obj.num_cols, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetBoundsResponse
    let len;
    let data = new GetBoundsResponse(null);
    // Deserialize message field [num_rows]
    data.num_rows = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num_cols]
    data.num_cols = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'randomwalker/GetBoundsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b43c3f7151561a46ea4332c06c9db277';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 num_rows
    int32 num_cols
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetBoundsResponse(null);
    if (msg.num_rows !== undefined) {
      resolved.num_rows = msg.num_rows;
    }
    else {
      resolved.num_rows = 0
    }

    if (msg.num_cols !== undefined) {
      resolved.num_cols = msg.num_cols;
    }
    else {
      resolved.num_cols = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetBoundsRequest,
  Response: GetBoundsResponse,
  md5sum() { return 'b43c3f7151561a46ea4332c06c9db277'; },
  datatype() { return 'randomwalker/GetBounds'; }
};
