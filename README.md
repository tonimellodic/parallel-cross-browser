# parallel-cross-browser
Example on how to run the same cucumber scenario in several browsers, in parallel.
TODO: Better explanation

## Prerequisites
You need both Ruby and Bundler (https://bundler.io/) installed to run this project.

## Install
```
bundle install
```

## Test execution

The sample scenario is simple: open Google page and check that its title is indeed `Google`.

### One browser
Only Chrome will get executed:
```
bundle exec cucumber
```

### N browsers in parallel
In this example, the test suite is executed 2 times, one with Chrome and one with Firefox, which both run in parallel:
```
parallel_test -n 2 -e 'bundle exec cucumber --format progress'
```
*Note:* `--format progress` prevents the output from being mixed up when having several scenarios
