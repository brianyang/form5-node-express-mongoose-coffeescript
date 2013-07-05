mongoose = require 'mongoose'

#
# Getters and setters for tags
#
getTags = (tags) ->
  return tags.join ','

setTags = (tags) ->
  return tags.split ','

#
# Article Schema
#
Schema = mongoose.Schema

VendorSchema = new Schema
  title:
    type: String
    trim: true
    required: true

  body:
    type: String
    required: true

  tags:
    type: []
    get: getTags
    set: setTags

  createdAt:
    type: Date
    default: Date.now

#
# Schema statics
#
VendorSchema.statics =
  list: (cb) ->
    this.find().sort
      createdAt: -1
    .exec(cb)
    return

Vendor = mongoose.model 'Vendor', VendorSchema
