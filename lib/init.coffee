path = require 'path'

module.exports =
  config:
    executablePath:
      title: 'GO Executable Path'
      description: 'The path where govet is located'
      type: 'string'
      default: ''

  activate: ->
    console.log 'activate linter-govet'
