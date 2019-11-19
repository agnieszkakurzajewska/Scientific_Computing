# Agnieszka Kurzajewska
# nr indeksu: 244994

# Zad. 1a.

# a)
function machepsHalf()

  h = Float16(1) #zmienna początkowo ustawiona na 1, a następnie iteracyjnie zmniejszana do wartości machepsu

  while(Float16(1 + h) > Float16(1) && Float16(1 + h / 2) != Float16(1))

    h = Float16(h / 2)

  end

  println("Float16: obliczony macheps: ", h, ", macheps podany przez funkcję eps(): ", eps(Float16))

end

# b)
function machepsSingle()

  s = Float32(1)

    while(Float32(1 + s) > Float32(1) && Float32(1 + s / 2) != Float32(1))

  s = Float32(s/2)

  end

  println("Float32: obliczony macheps: ", s, ", macheps podany przez funkcję eps(): ", eps(Float32))

end

# c)
function machepsDouble()

  d = Float64(1)

  while(Float64(1 + d) > Float64(1) && Float64(1 + d / 2) != Float64(1))

    d = Float64(d / 2)

  end

  println("Float64: obliczony macheps: ", d, ", macheps podany przez funkcję eps(): ", eps(Float64))

end

machepsHalf()
machepsSingle()
machepsDouble()
