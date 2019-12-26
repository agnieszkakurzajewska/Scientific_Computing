#Agnieszka Kurzajewska
#nr indeksu: 244994

include("zadania.jl")
using .zadania

e=2.71828182845904523536028747135266249775724709369995

f(x)=e^(1-x)-1
fp(x) = -(e^(1-x))

println(mbisekcji(f, Float64(-6), Float64(40), Float64(0.0001), Float64(0.0001)))
println(mstycznych(f, fp, Float64(-6), Float64(0.0001), Float64(0.0001), Int(60)))
println(msiecznych(f, Float64(-6), Float64(7.5), Float64(0.0001), Float64(0.0001), Int(800)))
println(mstycznych(f, fp, Float64(1), Float64(0.0001), Float64(0.0001), Int(60)))
println(mstycznych(f, fp, Float64(2), Float64(0.0001), Float64(0.0001), Int(60)))

f(x)=x*e^(-x)
fp(x) = -(e^(-x))*(x-1)

println(mbisekcji(f, Float64(-1), Float64(40), Float64(0.0001), Float64(0.0001)))
println(mstycznych(f, fp, Float64(-1), Float64(0.0001), Float64(0.0001), Int(60)))
println(msiecznych(f, Float64(-1), Float64(40), Float64(0.0001), Float64(0.0001), Int(60)))
println(mstycznych(f, fp, Float64(1), Float64(0.0001), Float64(0.0001), Int(60)))
println(mstycznych(f, fp, Float64(2), Float64(0.0001), Float64(0.0001), Int(60)))
