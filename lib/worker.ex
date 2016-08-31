defmodule TentahookExample.Worker do
  use Tentahook

  def start_link(_opts \\ []) do
    secret = Application.get_env(:tentahook_example, :secret)
    tentahook_opts = %{handler: __MODULE__, secrets: [secret]}
    cowboy_opts = [port: 8080]
    Tentahook.start_link(tentahook_opts, cowboy_opts)
  end

  def handle_webhook(data) do
    IO.inspect(data)
  end

end
