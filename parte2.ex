defmodule Parte2 do

  def piso(x) do
    case {x} do
      {40} ->  1
      {41} -> -1
      {_}  ->  0
    end  
  end

    
  def buscar_piso(a, r, lista) when r >= -1 do
    case {a, r, lista} do
      {a, -1, _}         -> a
      {a, _,[] }         -> a
      {_, _, [h|t]}      -> buscar_piso(a + 1, r + piso(h), t)
    end 
  end


  def read_file() do
    {_, bin} = File.read("input.txt")
    String.to_charlist(bin)
  end

  def start() do
      lista = read_file()
      buscar_piso(0, 0, lista)
  end

end