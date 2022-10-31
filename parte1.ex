defmodule Parte1 do

  def piso(x) do
    case {x} do
      {40} -> 1
      {41} -> -1
      {_} -> 0
    end  
  end


  def buscar_piso(lista) do
    case {lista} do
      {[]}    -> 0
      {[h|t]} -> piso(h) + buscar_piso(t)
    end 
  end


  def read_file() do
    {ok, bin} = File.read("input.txt")
    String.to_charlist(bin)
  end

  def start() do
      lista = read_file()
      buscar_piso(lista)
  end

end