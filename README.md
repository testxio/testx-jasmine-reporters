# @testx/reporters-jasmine

A [**testx**](http://testx.io) package for quick and easy installation of Jasmine reporters.

## Usage

### To add Jasmine reports to your test run

Below are all configuration options (with default values).

```JavaScript
const reporters = require('@testx/reporters-jasmine')
reporters({
  // set to false to omit this reporter
  junit: {
    dir: 'testresults/junit',
    file: 'junit'
  },
  // set to false to omit this reporter
  html: {
    dir: 'testresults/html'
  },
  // set to false to omit this reporter
  spec: {
    displayStacktrace: 'none',    // display stack trace for each failed assertion, values: (all|specs|summary|none)
    displayFailuresSummary: true, // display summary of all failures after execution
    displayPendingSummary: true,  // display summary of all pending specs after execution
    displaySuccessfulSpec: true,  // display each successful spec
    displayFailedSpec: true,      // display each failed spec
    displayPendingSpec: false,    // display each pending spec
    displaySpecDuration: false,   // display each spec duration
    displaySuiteNumber: false,    // display each suite number (hierarchical)
    // set to false to disable colors
    colors: {
      success: 'green',
      failure: 'red',
      pending: 'yellow'
    },
    prefixes: {
      success: '✓ ',
      failure: '✗ ',
      pending: '* '
    }
  }
});
```

You can have all reports installed with their default values if you omit the corresponding options attribute. This means that if you just invoke it without an argument all reporters will be added with their default values, i.e.

```JavaScript
  require('@testx/reporters-jasmine')()
```

If you do not want to add certain reporter simply set the corresponding option attribute to _false_. For example if you do not want to use the HTML reporter do

```JavaScript
  reporters({html: false})
```

For further details on configuring the HTML reporter please take a look at the TestX [html-reporter](https://github.com/testxio/html-reporter).
