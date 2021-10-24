#Agnieszka Kurzajewska
#nr indeksu: 244994

include("zadania.jl")
using .zadania

e=2.71828182845904523536028747135266249775724709369995

f(x)=3*x - e^x
fp(x) = 3 - e^x

println(mbisekcji(f, Float64(1.5), Float64(2), Float64(0.0001), Float64(0.0001)))

f(x)=e^x - 3*x
fp(x) = e^x - 3

println(mbisekcji(f, Float64(1.5), Float64(2), Float64(0.0001), Float64(0.0001)))
