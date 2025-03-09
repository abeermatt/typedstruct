defmodule TypedStruct.Plugins.DefException do
  use TypedStruct.Plugin

  @impl true
  @spec init(keyword()) :: Macro.t()
  defmacro init(_opts) do
    quote do
      Module.put_attribute(__MODULE__, :def_impl, &defexception/1)
    end
  end
end
