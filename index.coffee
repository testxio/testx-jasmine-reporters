addJunitReporter = (opts) ->
  unless opts is false
    require 'jasmine-reporters'
    dir = opts?.dir || 'testresults/junit'
    file = opts?.file || 'junit'
    jasmine.getEnv().addReporter(new jasmine.JUnitXmlReporter dir, true, true, file, true)

addHtmlReporter = (opts) ->
  unless opts is false
    HtmlReporter = require 'protractor-html-screenshot-reporter'
    dir = opts?.dir ||'testresults/html'
    jasmine.getEnv().addReporter(new HtmlReporter baseDirectory: dir)

addSpecReporter = (opts) ->
  unless opts is false
    require 'jasmine-spec-reporter'
    jasmine.getEnv().addReporter new jasmine.SpecReporter(displayStacktrace: opts?.displayStacktrace || false)

addReporters = (opts) ->
  addJunitReporter opts?.junit
  addHtmlReporter opts?.html
  addSpecReporter opts?.spec

module.exports = addReporters
