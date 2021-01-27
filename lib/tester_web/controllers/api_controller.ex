defmodule TesterWeb.ApiController do
  use TesterWeb, :controller

  def index(conn, _params) do
    text(conn, "1")
  end

end
