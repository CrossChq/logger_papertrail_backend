defmodule LoggerPapertrailBackend do
  @moduledoc false
  use Application

  @impl true
  def start(_type, _args) do
    children = [
      LoggerPapertrailBackend.Sender
    ]

    opts = [strategy: :one_for_one, name: LoggerPapertrailBackend.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
