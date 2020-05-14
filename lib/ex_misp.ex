defmodule ExMisp do

  @type_header "application/json"

  def add_event() do
  end

  def get_event() do
  end

  @doc """
  accepted methods - :get, :post, :put, :delete
  options - Keyword list of options
  """
  def do_request(method, rest_url, body \\ [], headers \\ [], options \\ []) do
    default_headers = [
      "Authoirzation": Application.get_env(:ex_misp, :key),
      "Accept": @type_header,
      "Connect-Type": @type_header
    ]
    url = Application.get_env(:ex_misp, :url)
    case HTTPoison.request(method, url <> rest_url, body, headers ++ default_headers, options) do
      {:ok, res} ->
        res
      {:error, res} ->
        res
    end
  end
end
