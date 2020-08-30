defmodule Translatr.Repo do
  use Ecto.Repo,
    otp_app: :translatr,
    adapter: Ecto.Adapters.Postgres
end
