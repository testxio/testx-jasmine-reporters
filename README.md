testx-jasmine-reporters
=====

A package for quick and easy installation of Jasmine reporters.

## Usage

### To add Jasmine reports to your test run
```
  reporters = require 'testx-jasmine-reporters'
  reporters
    junit: # set to false to omit this reporter
      dir: 'results/junit' # defaults to 'testresults/junit'
      file: 'junit-' # defaults to 'junit'
    html:  # set to false to omit this reporter
      dir: 'testresults/html' # defaults to 'testresults/html'
    spec:  # set to false to omit this reporter
      displayStacktrace: false # defaults to false

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
