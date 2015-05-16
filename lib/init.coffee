path = require 'path'

module.exports =
  config:
    goExecutablePath:
      type: 'string'
      default: ''

  activate: ->
    console.log 'activate linter-govet'
