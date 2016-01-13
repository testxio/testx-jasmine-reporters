HtmlReporter     = require 'testx-html-reporter'
SpecReporter     = require 'jasmine-spec-reporter'
JasmineReporters = require 'jasmine-reporters'

addJunitReporter = (opts) ->
  unless opts is false
    dir = opts?.dir or 'testresults/junit'
    file = opts?.file or 'junit'
    consolidateAll = opts?.consolidateAll or false
    jasmine.getEnv().addReporter new JasmineReporters.JUnitXmlReporter
        savePath: dir
        filePrefix: file
        consolidateAll: consolidateAll

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
