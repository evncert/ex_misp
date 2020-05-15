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
      "Authorization": Application.get_env(:ex_misp, :key),
      "Accept": @type_header,
      "Content-Type": @type_header
    ]
    url = Application.get_env(:ex_misp, :url)
    case HTTPoison.request(method, url <> rest_url, body, headers ++ default_headers, options) do
      {:ok, res} ->
        with {:ok, 200}   <- check_status(res),
             {:ok, json}  <- Poison.decode(res.body)
        do
          json
        else
          {:error, err} ->
            {:error, err}
        end
      {:error, err} ->
        {:error, err}
    end
  end

  defp check_status(res) do
    case res.status_code do
      200 ->
        {:ok, 200}
      _ ->
        {:error, res}
    end
  end
end
