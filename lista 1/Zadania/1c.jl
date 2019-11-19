# Agnieszka Kurzajewska
# nr indeksu: 244994

# Zad. 1c.

# a)
function halfMax()

  h = Float16(1)

    while( isinf(Float16(h * 2)) == false)

  h = h * 2

  end

  h = h * (2 - eps(Float16))

  println("Float16: floatmax obliczone: ", h, ", floatmax z funkcji wbudowanej: ", floatmax(Float16))

end

function singleMax()

  s = Float32(1)

  while( isinf(Float32(s * 2)) == false)

    s = s * 2

  end

  s = s * (2 - eps(Float32))

  println("Float32: floatmax obliczone: ", s, ", floatmax z funkcji wbudowanej: ", floatmax(Float32))

end

function doubleMax()

  d = Float64(1)

  while( isinf(Float64(d * 2)) == false)

    d = d * 2

  end

  d = d * (2 - eps(Float64))

  println("Float64: floatmax obliczone: ", d, ", floatmax z funkcji wbudowanej: ", floatmax(Float64))

end

halfMax()
singleMax()
doubleMax()
