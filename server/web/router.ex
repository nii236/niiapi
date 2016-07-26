defmodule NiiAPI.Router do
  use NiiAPI.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", NiiAPI do
    pipe_through :api
    get "/", APIController, :index
  end
end
