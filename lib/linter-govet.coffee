linterPath = atom.packages.getLoadedPackage('linter').path
Linter = require "#{linterPath}/lib/linter"

class LinterGovet extends Linter
  @syntax: ['source.go']

  defaultCmd: 'go tool vet'

  cmd: null

  errorStream: 'stderr'

  linterName: 'govet'

  regex: '.+?:(?<line>\\d+):((?<col>\\d+):)?(?<error>.+)'

  options: ['executablePath', 'extraOptions']

  constructor: (@editor) ->
    super(@editor)

    @cmd = @defaultCmd

    keyPath = "linter-#{@linterName}.extraOptions"

    @extraOptionsListener = atom.config.observe keyPath, =>
      @cmd = "#{@defaultCmd} #{@extraOptions}"

  destroy: ->
    @extraOptionsListener.dispose()

  formatMessage: (match) ->
    match.error

module.exports = LinterGovet
