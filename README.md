# Task Management

## Setup

Prerequisites

- [Ruby 3.4.1](https://github.com/rbenv/rbenv)
- [SQLite 3](https://www.sqlite.org)

Install dependencies and setup database

```bash
bin/setup
```

Start local web server

```bash
bin/dev
```

Go to [http://localhost:3000](http://localhost:3000)

## Testing

Default: Run all spec files (i.e., those matching spec/\*\*/\*\_spec.rb)

```bash
bin/rspec
```

or with `--fail-fast` option to stop running the test suite on the first failed test. You may add a parameter to tell RSpec to stop running the test suite after N failed tests, for example: `--fail-fast=3`

```bash
bin/rspec --fail-fast
```

Run all spec files in a single directory (recursively)

```bash
bin/rspec spec/models
```

Run a single spec file

```bash
bin/rspec spec/models/task_spec.rb
```

Run a single example from a spec file (by line number)

```bash
bin/rspec spec/models/task_spec.rb:6
```

Use the plain-English descriptions to generate a report of where the application conforms to (or fails to meet) the spec

```bash
bin/rspec --format documentation
```

```bash
bin/rspec --format documentation spec/models/task_spec.rb
```

See all options for running specs

```bash
bin/rspec --help
```
