# Agnieszka Kurzajewska
# nr indeksu: 244994

# Zad. 1c.

# a)
function halfMax()

  h = Float16(1)

    while !isinf(Float16(h * 2))

        h = h * 2

  end

  h = h * (2 - eps(Float16))

  println("Float16: Calculated floatmax: ", h, ", floatmax given by build-in function: ", floatmax(Float16))

end

function singleMax()

  s = Float32(1)

  while !isinf(Float32(s * 2))

    s = s * 2

  end

  s = s * (2 - eps(Float32))

  println("Float32: Calculated floatmax: ", s, ", floatmax given by build-in function: ", floatmax(Float32))

end

function doubleMax()

  d = Float64(1)

  while !isinf(Float64(d * 2))

    d = d * 2

  end

  d = d * (2 - eps(Float64))

  println("Float64: Calculated floatmax: ", d, ", floatmax given by build-in function: ", floatmax(Float64))

end

halfMax()
singleMax()
doubleMax()
