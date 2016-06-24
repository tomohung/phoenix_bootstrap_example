ExUnit.start

Mix.Task.run "ecto.create", ~w(-r BootstrapExample.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r BootstrapExample.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(BootstrapExample.Repo)

