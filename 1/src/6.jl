# Agnieszka Kurzajewska
# nr indeksu: 244994

# Zad. 6.

function f()
  
  x = 2
  f = Float64(Float64(sqrt( Float64(x ^ 2)+ Float64(1) )) - Float64(1))
  g = Float64(x ^ 2) / Float64(Float64( sqrt( Float64(x ^ 2) + Float64(1) ) ) + Float64(1))

  for i = 1.0:10.0
    
    x = Float64(8.0 ^ ( - x))
    println("8^(-",i, "):")
    println("f: ", Float64(Float64(sqrt( Float64(x ^ 2) + Float64(1) )) - Float64(1)))
    println("g: ", Float64(x ^ 2) / Float64(Float64( sqrt( Float64(x ^ 2) + Float64(1) ) ) + Float64(1)))
    println()
  end

end 

f()
