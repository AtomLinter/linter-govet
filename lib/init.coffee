path = require 'path'

module.exports =
  config:
    executablePath:
      title: 'GO Executable Path'
      description: 'Path where govet bin located'
      type: 'string'
      default: ''

  activate: ->
    console.log 'activate linter-govet'
