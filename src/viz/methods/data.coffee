process = require "../../core/methods/process/data.coffee"

module.exports =
  accepted: [false, Array, Function, String]
  cache: {}
  delimiter:
    accepted: [String]
    value: "|"
  donut:
    size: 0.35
  filetype:
    accepted: [false, "json", "xml", "html", "csv", "dsv", "tsv", "txt"]
    value: false
  filters: []
  mute: []
  large: 400
  opacity: 0.9
  padding:
    accepted: [Number]
    value: 1
  process: (value, vars) ->

    if vars.container.id is "default" and value.length
      vars.self.container id: "default" + value.length

    process value, vars, this

  solo: []
  stroke:
    width: 1
  value: false
