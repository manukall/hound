defmodule Hound.Supervisor do
  use Supervisor.Behaviour

  def start_link(options) do
    :supervisor.start_link(__MODULE__, [options])
  end

  def init([options]) do
    children = [
      worker(Hound.SessionServer, [options])
    ]

    # See http://elixir-lang.org/docs/stable/Supervisor.Behaviour.html
    # for other strategies and supported options
    supervise(children, strategy: :one_for_one)
  end
end
