defmodule AppWeb.PageController do
  use AppWeb, :controller

  def index(conn, _params) do
    json(conn, %{message: "Hello world!"})
  end
end
