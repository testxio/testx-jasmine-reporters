HtmlReporter     = require 'protractor-jasmine2-html-reporter'
SpecReporter     = require 'jasmine-spec-reporter'
JasmineReporters = require 'jasmine-reporters'

addJunitReporter = (opts) ->
  unless opts is false
    dir = opts?.dir or 'testresults/junit'
    file = opts?.file or 'junit'
    jasmine.getEnv().addReporter new JasmineReporters.JUnitXmlReporter
        consolidateAll: true
        savePath: dir
        filePrefix: file

addHtmlReporter = (opts) ->
  unless opts is false
    dir = opts?.dir or 'testresults/html/'
    unless dir[-1..] is '/' then dir = "#{dir}/"
    jasmine.getEnv().addReporter new HtmlReporter
      savePath: dir

addSpecReporter = (opts) ->
  unless opts is false
    jasmine.getEnv().addReporter new SpecReporter opts

addReporters = (opts) ->
  addJunitReporter opts?.junit
  addHtmlReporter opts?.html
  addSpecReporter opts?.spec

module.exports = addReporters
