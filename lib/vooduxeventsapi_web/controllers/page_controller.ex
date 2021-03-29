defmodule VooduxeventsapiWeb.PageController do
  use VooduxeventsapiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
