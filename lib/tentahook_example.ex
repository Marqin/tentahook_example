defmodule TentahookExample do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(TentahookExample.Worker, []),
    ]

    opts = [strategy: :one_for_one, name: TentahookExample.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
