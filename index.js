const HtmlReporter = require("testx-html-reporter");
const SpecReporter = require("jasmine-spec-reporter");
const JasmineReporters = require("jasmine-reporters");

const addJunitReporter = function(opts) {
  if (opts !== false) {
    const options = opts || {};
    options.savePath =
      (opts != null ? opts.dir : undefined) ||
      (opts != null ? opts.savePath : undefined) ||
      "testresults/junit";
    options.filePrefix =
      (opts != null ? opts.file : undefined) ||
      (opts != null ? opts.filePrefix : undefined) ||
      "junit";
    options.consolidateAll =
      (opts != null ? opts.consolidateAll : undefined) === undefined
        ? true
        : opts != null ? opts.consolidateAll : undefined;
    jasmine
      .getEnv()
      .addReporter(new JasmineReporters.JUnitXmlReporter(options));
  }
};

const addHtmlReporter = function(opts) {
  if (opts !== false) {
    const options = opts || {};
    options.savePath =
      (opts != null ? opts.dir : undefined) ||
      (opts != null ? opts.savePath : undefined) ||
      "testresults/html/";
    jasmine.getEnv().addReporter(new HtmlReporter(options));
  }
};

const addSpecReporter = function(opts) {
  if (opts !== false) {
    jasmine.getEnv().addReporter(new SpecReporter(opts));
  }
};

const addReporters = function(opts) {
  addJunitReporter(opts != null ? opts.junit : undefined);
  addHtmlReporter(opts != null ? opts.html : undefined);
  addSpecReporter(opts != null ? opts.spec : undefined);
};

module.exports = addReporters;
