testx-jasmine-reporters
=====

A package for quick and easy installation of Jasmine reporters.

## Usage

### To add Jasmine reports to your test run

Below are all configuration options (with default values).

```
reporters = require 'testx-jasmine-reporters'
reporters
  junit: # set to false to omit this reporter
    dir: 'testresults/junit'
    file: 'junit'
  html:  # set to false to omit this reporter
    dir: 'testresults/html'
  spec:  # set to false to omit this reporter
    displayStacktrace: 'none'    # display stacktrace for each failed assertion, values: (all|specs|summary|none)
    displayFailuresSummary: true # display summary of all failures after execution
    displayPendingSummary: true  # display summary of all pending specs after execution
    displaySuccessfulSpec: true  # display each successful spec
    displayFailedSpec: true      # display each failed spec
    displayPendingSpec: false    # display each pending spec
    displaySpecDuration: false   # display each spec duration
    displaySuiteNumber: false    # display each suite number (hierarchical)
    colors:                      # set to false to disable colors
      success: 'green'
      failure: 'red'
      pending: 'yellow'
    prefixes:
      success: '✓ '
      failure: '✗ '
      pending: '* '

```

You can have all reports installed with their default values if you omit the corresponding options attribute. This means that if you just invoke it without an argument all reporters will be added with their default values, i.e.
```
  require('testx-jasmine-reporters')()
```

If you do not want to add certain reporter simply set the corresponding option attribute to *false*. For example if you do not want to use the HTML reporter do
```
  reporters
    html: false
```
