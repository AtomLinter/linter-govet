linter-govet
=========================

This linter plugin for [Linter](https://github.com/AtomLinter/Linter) provides an interface to Go's `go vet`. It will be used with files that have the `Go` syntax.

## Installation
Linter package must be installed in order to use this plugin. If Linter is not installed, please follow the instructions [here](https://github.com/AtomLinter/Linter).

### Plugin installation
```
$ apm install linter-govet
```

## Settings
You must configure linter-govet by editing ~/.atom/config.cson (choose Open Your Config in Atom menu):
```
'linter-govet':
  'executablePath': path to Go executable. Use `which go` to find it out.
```

## Contributing
If you would like to contribute enhancements or fixes, please do the following:

1. Fork the plugin repository.
1. Hack on a separate topic branch created from the latest `master`.
1. Commit and push the topic branch.
1. Make a pull request.
1. welcome to the club

Please note that modifications should follow these coding guidelines:

- Indent is 2 spaces.
- Code should pass coffeelint linter.
- Vertical whitespace helps readability, don’t be afraid to use it.

Thank you for helping out!
