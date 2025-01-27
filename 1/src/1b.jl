# Agnieszka Kurzajewska
# 244994

# Task 1b

# a)
function etaHalf()

  h = Float16(1)

    while(Float16(h) > Float16(0) && Float16(h / 2) != Float16(0))

        h = Float16(h / 2)

  end

  println("Float16: Calculated eta: ", h, ", eta given by nextfloat() function: ", nextfloat(Float16(0.0)))

end

# b)
function etaSingle()

  s = Float32(1)

  while(Float32(s) > Float32(0) && Float32(s / 2) != Float32(0))

    s = Float32(s / 2)

  end

  println("Float32: Calculated eta: ", s, ", eta given by nextfloat() function: ", nextfloat(Float32(0.0)))

end

# c)
function etaDouble()

  d = Float64(1)

  while(Float64(d) > Float64(0) && Float64(d / 2) != Float64(0))

    d = Float64(d / 2)

  end

  println("Float64: Calculated eta: ", d, ", eta given by nextfloat() function: ", nextfloat(Float64(0.0)))

end

etaHalf()
etaSingle()
etaDouble()

