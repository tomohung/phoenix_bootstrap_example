use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :bootstrap_example, BootstrapExample.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :bootstrap_example, BootstrapExample.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "bootstrap_example_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
