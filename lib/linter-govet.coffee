linterPath = atom.packages.getLoadedPackage('linter').path
Linter = require "#{linterPath}/lib/linter"
{CompositeDisposable} = require 'atom'

class LinterGovet extends Linter
  @syntax: ['source.go']

  cmd: ['go', 'tool', 'vet', '-v']

  executablePath: null

  errorStream: 'stderr'

  linterName: 'govet'

  regex: '.+?:(?<line>\\d+):((?<col>\\d+):)? (?<message>.+)'

  constructor: (editor) ->
    super(editor)

    @subscriptions = new CompositeDisposable

    @subscriptions.add atom.config.observe 'linter-govet.goExecutablePath', (path) =>
      @executablePath = atom.config.get 'linter-golint.goExecutablePath'

  destroy: ->
    @subscriptions.dispose()

module.exports = LinterGovet
