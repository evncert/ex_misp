defmodule ExMisp.Events do
  def list_events do
    rest_url = "/events/index"
    method = "GET"
    ExMisp.do_request(method, rest_url)
  end
end
