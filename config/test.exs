use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :platform, PlatformWeb.Endpoint,
  http: [port: 4001],
  server: false

# Reduce argon2 rounds to speed up tests
config :argon2_elixir,
  t_cost: 2,
  m_cost: 12

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :platform, Platform.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "platform_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
