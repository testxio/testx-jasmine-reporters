HtmlReporter     = require 'testx-html-reporter'
SpecReporter     = require 'jasmine-spec-reporter'
JasmineReporters = require 'jasmine-reporters'

addJunitReporter = (opts) ->
  unless opts is false
    options = opts or {}
    options.savePath = opts?.dir or opts?.savePath or 'testresults/junit'
    options.filePrefix = opts?.file or opts?.filePrefix or 'junit'
    options.consolidateAll = if opts?.consolidateAll is undefined then true else opts?.consolidateAll
    jasmine.getEnv().addReporter new JasmineReporters.JUnitXmlReporter options

addHtmlReporter = (opts) ->
  unless opts is false
    options = opts or {}
    options.savePath = opts?.dir or opts?.savePath or 'testresults/html/'
    jasmine.getEnv().addReporter new HtmlReporter options

addSpecReporter = (opts) ->
  unless opts is false
    jasmine.getEnv().addReporter new SpecReporter opts

addReporters = (opts) ->
  addJunitReporter opts?.junit
  addHtmlReporter opts?.html
  addSpecReporter opts?.spec

module.exports = addReporters
