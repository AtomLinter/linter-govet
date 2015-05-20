linterPath = atom.packages.getLoadedPackage('linter').path
Linter = require "#{linterPath}/lib/linter"
{CompositeDisposable} = require 'atom'

class LinterGovet extends Linter
  @syntax: ['source.go']

  cmd: ['go', 'tool', 'vet', '-v']

  errorStream: 'stderr'

  defaultLevel: 'warning'

  linterName: 'govet'

  regex: '.+?:(?<line>\\d+):((?<col>\\d+):)? (?<message>.+)'

  options: ['executablePath']

module.exports = LinterGovet
