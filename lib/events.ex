defmodule ExMisp.Events do
  def list_events do
    rest_url = "/events/index"
    method = "GET"
    ExMisp.do_request(method, rest_url)
  end

  def add_event(event) do
    {:ok, event_json} = Poison.encode(event)
    method = "POST"
    rest_url = "/events/add"
    body = event_json
    ExMisp.do_request(method, rest_url, body)
  end

  def add_attributes(attributes, event_id) do
    {:ok, attributes_json} = Poison.encode(attributes)
    rest_url = "/attributes/add/#{event_id}"
    body = attributes_json
    ExMisp.do_request("POST", rest_url, body)
  end
end
