path = require 'path'

module.exports =
  config:
    executablePath:
      title: 'Go Executable Path'
      description: 'The path where govet is located'
      type: 'string'
      default: ''
    extraOptions:
      title: 'Extra Options'
      description: 'Options for `go vet` command'
      type: 'string'
      default: '-v'
  activate: ->
    console.log 'activate linter-govet'
