defmodule Discuss.Plugs.SetUser do
  import Plug.Conn
  import Phoenix.Controller

  alias Discuss.Repo
  alias Discuss.User

  def init(_params) do
  end

  # _params come from the init function
  def call(conn, _params) do
    # we get user_id coming from the session
    user_id = get_session(conn, :user_id)

    # condition statement return the first one who is true
    cond do
      user = user_id && Repo.get(User, user_id) ->
        assign(conn, :user, user)
      true ->
        assign(conn, :user, nil)
    end
  end
end
