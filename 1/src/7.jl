# Agnieszka Kurzajewska
# 244994

# Task 7

function functionf(x) #function formula
  return Float64(Float64(sin(x)) + Float64(cos(3 * (x))))
end

function accurateResult(x) #the exact value of the derivative
  return Float64(Float64(cos(x)) - 3 * Float64(sin( 3 * x)))
end
  
function derivateFunction(x, h) #approximate value of the derivative
  return Float64((Float64((functionf(x + h) - functionf(x))) / h))
end
  
function computableError(accurate, loose)
  return Float64(abs(Float64(accurate) - Float64(loose)))
end

  function counter()

    for i in 0 : 54

      h = Float64(2.0^(-i))
      println("h: 2^(-", i, ") = ", h)
      println("derivative: ", derivateFunction(1.0, h), ", calculation error: ", computableError(accurateResult(1.0), derivateFunction(1,h)), "\n")
      h = h / 2
      
    end
  end
  
  counter()