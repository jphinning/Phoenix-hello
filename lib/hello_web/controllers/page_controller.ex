defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  plug HelloWeb.Plugs.Locale, "de" when action in [:home]

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.

    conn
    |> put_flash(:error, "Let's pretend it here")
    |> redirect(to: ~p"/redirect_test")
  end

  def redirect_test(conn, _params) do
    render(conn, :home, layout: false)
  end
end
