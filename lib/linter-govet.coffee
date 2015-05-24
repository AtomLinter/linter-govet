linterPath = atom.packages.getLoadedPackage('linter').path
Linter = require "#{linterPath}/lib/linter"

class LinterGovet extends Linter
  @syntax: ['source.go']

  cmd: ['go', 'tool', 'vet', '-v']

  errorStream: 'stderr'

  linterName: 'govet'

  regex: '.+?:(?<line>\\d+):((?<col>\\d+):)? (?<warning>.+)'

  options: ['executablePath']

  formatMessage: (match) ->
    match.warning

module.exports = LinterGovet
