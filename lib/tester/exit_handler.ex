defmodule Tester.ExitHandler do
  use GenServer

  require Logger

  def start_link(_) do
    GenServer.start_link(__MODULE__, %{}, name: __MODULE__)
  end

  @impl true
  def init(state) do
    Process.flag(:trap_exit, true)
    {:ok, state}
  end

  @impl true
  def terminate(_msg, state) do
    Logger.info("Sleeping")
    Process.sleep(4500)
    Logger.info("Done sleeping")
  end
end
