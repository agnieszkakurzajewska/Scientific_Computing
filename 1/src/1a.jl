# Agnieszka Kurzajewska
# nr indeksu: 244994

# Zad. 1a.

# a)
function machepsHalf()

  h = Float16(1) #variable initially set to 1 and then iteratively reduced to machepsu value

  while(Float16(1 + h) > Float16(1) && Float16(1 + h / 2) != Float16(1))

    h = Float16(h / 2)

  end

  println("Float16: Calculated macheps: ", h, ", macheps given by eps() function: ", eps(Float16))

end

# b)
function machepsSingle()

  s = Float32(1)

    while(Float32(1 + s) > Float32(1) && Float32(1 + s / 2) != Float32(1))

  s = Float32(s/2)

  end

  println("Float32: Calculated macheps: ", s, ", macheps given by eps() function(): ", eps(Float32))

end

# c)
function machepsDouble()

  d = Float64(1)

  while(Float64(1 + d) > Float64(1) && Float64(1 + d / 2) != Float64(1))

    d = Float64(d / 2)

  end

  println("Float64: Calculatedliczony macheps: ", d, ", macheps given by eps() function(): ", eps(Float64))

end

machepsHalf()
machepsSingle()
machepsDouble()
