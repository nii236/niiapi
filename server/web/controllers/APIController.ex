defmodule NiiAPI.APIController do
  use NiiAPI.Web, :controller

  def index(conn, _params) do
    conn
    |> json(%{success: true})
  end
end
