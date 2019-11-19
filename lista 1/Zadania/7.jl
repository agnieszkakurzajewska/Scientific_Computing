# Agnieszka Kurzajewska
# nr indeksu: 244994

function functionf(x) #wzór funkcji
  return Float64(Float64(sin(x)) + Float64(cos(3 * (x))))
end

function accurateResult(x) #dokładna wartość pochodnej
  return Float64(Float64(cos(x)) - 3 * Float64(sin( 3 * x)))
end
  
function derivateFunction(x, h) # przyblizona wartość pochodnej funkcji
  return Float64((Float64((functionf(x + h) - functionf(x))) / h))
end
  
function computableError(accurate, loose) # błąd obliczeniowy(róznica dokładej i przyblionej wartości pochodnej)
  return Float64(abs(Float64(accurate) - Float64(loose)))
end

  function counter()

    h = Float64(1)
    for i in 1 : 52

      println("h: ", i)
      println("pochodna: ", derivateFunction(1.0, h), ", błąd: ", computableError(accurateResult(1.0), derivateFunction(1,h)))
      h = h / 2
      
    end
  end
  
  counter()