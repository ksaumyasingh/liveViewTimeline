defmodule ChripWeb.PageController do
  use ChripWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
