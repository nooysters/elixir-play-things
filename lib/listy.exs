defmodule Listy do
  # flatten implmenetation (not mine, José's)
  def flatten(list), do: do_flatten(list, [])

  def do_flatten([h|t], tail) when is_list(h) do
    do_flatten(h, do_flatten(t, tail))
  end

  def do_flatten([h|t], tail) do
    [h|do_flatten(t, tail)]
  end

  def do_flatten([], tail) do
    tail
  end

  # split implentation (mine)
  def split(string, delimiter) do
    dosplit(to_charlist(string), to_charlist(delimiter), [], "")
  end

  defp dosplit([], _, list, acc) do
    list ++ [acc]
  end 
  defp dosplit([head | tail], delimiter, list, acc) when [head] == delimiter do
    dosplit(tail, delimiter, (list ++ [acc]), "")
  end 
  defp dosplit([head | tail], delimiter, list, acc) do
    dosplit(tail, delimiter, list, (acc <> to_string [head])) 
  end 

  # all? implemtation (mine)
  def all?(_, func, acc \\true) 
  def all?(_, _, acc) when acc == false do
    false
  end
  def all?([head | tail], func, _) do
    all?(tail, func, func.(head))
  end
  def all?([], _, _), do: true

  # each implementation (mine)
  def each([], _), do: []
  def each([head|tail], func) do
    [func.(head)] ++ each(tail, func)
  end
end 