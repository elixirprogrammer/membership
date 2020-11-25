defmodule Membership.Repo do
  use Ecto.Repo,
    otp_app: :membership,
    adapter: Ecto.Adapters.Postgres
end
