#Agnieszka Kurzajewska
#nr indeksu: 244994
include("zadania.jl")
using .zadania

f(x)=2*x^3-30
fp(x) = 6x^2

println(mbisekcji(f, Float64(-10), Float64(40), Float64(0.00002), Float64(0.00002)))
println(mstycznych(f, fp, Float64(-10), Float64(0.00002), Float64(0.00002), Int(60)))
println(msiecznych(f, Float64(-10), Float64(40), Float64(0.0000002), Float64(0.0000002), Int(60)))

f(x)=3*sin(x)+1
fp(x) = 3*cos(x)

println(mbisekcji(f, Float64(-0.5), Float64(3), Float64(0.00002), Float64(0.00002)))
println(mstycznych(f, fp, Float64(-0.5), Float64(0.00002), Float64(0.00002), Int(60)))
println(msiecznych(f, Float64(-0.5), Float64(3), Float64(0.0000002), Float64(0.0000002), Int(60)))

f(x)=(7-x^3)/3-20
fp(x) = -(x^2)

println(mbisekcji(f, Float64(-6), Float64(0), Float64(0.00002), Float64(0.00002)))
println(mstycznych(f, fp, Float64(-6), Float64(0.00002), Float64(0.00002), Int(60)))
println(msiecznych(f, Float64(-6), Float64(0), Float64(0.0000002), Float64(0.0000002), Int(60)))

