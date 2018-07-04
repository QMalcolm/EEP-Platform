defmodule PlatformWeb.PageControllerTest do
  use PlatformWeb.ConnCase

  test "redirects unathenticated users away from index page", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 302) =~ "redirect"
  end
end
