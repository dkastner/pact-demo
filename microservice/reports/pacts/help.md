# For assistance debugging failures

* The pact files have been stored locally in the following temp directory:
    /Users/dkastner/pact-demo/microservice/tmp/pacts

* The requests and responses are logged in the following log file:
    /Users/dkastner/pact-demo/microservice/log/pact.log

* Add BACKTRACE=true to the `rake pact:verify` command to see the full backtrace

* If the diff output is confusing, try using another diff formatter.
  The options are :unix, :embedded and :list

    Pact.configure do | config |
      config.diff_formatter = :embedded
    end

  See https://github.com/pact-foundation/pact-ruby/blob/master/documentation/configuration.md#diff_formatter for examples and more information.

* Check out https://github.com/pact-foundation/pact-ruby/wiki/Troubleshooting

* Ask a question on stackoverflow and tag it `pact-ruby`


