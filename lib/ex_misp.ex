defmodule ExMisp do

  @type_header "application/json"

  def start do
    # HTTPoison.start
  end

  def init() do
    #HTTPoison.get(url, [Authorization: key, Accept:, Connect, Connect_type]
  end

  def add_event() do
  end

  @doc """
  accepted methods - :get, :post, :put, :delete
  options - Keyword list of options
  """
  def do_request(method, url, body \\ [], headers \\ [], options \\ []) do
    default_headers = [
      "Authoirzation": Application.get_env(:ex_misp, :key),
      "Accept": @type_header,
      "Connect-Type": @type_header
    ]
    case HTTPoison.request(method, url, body, headers ++ default_headers, options) do
      {:ok, res} ->
        res
      {:error, res} ->
        res
    end
  end
end
