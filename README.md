# Services dashboard

Sometimes your thing goes down because someone else's thing went down. But it can be hard to tell which thing it was, you know? If only we could summarize all those separate status pages in one place. OH WAIT.

It's a bit ugly and a bit fragile, but then again aren't we all?

## Configuration

Either supply json in the `SERVICES` environment variable, or include a `services.json` file in `config/`. See `config/services.json.example` for an example configuration.

To protect the page via http basic auth, set the `USERNAME` and `PASSWORD` environment variables.

## License

The code is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).