#Agnieszka Kurzajewska
#nr indeksu: 244994
include("zadania.jl")
using .zadania

f(x)=sin(x)-(x/2)^2
fp(x) = cos(x)-(x/2)

println(mbisekcji(f, Float64(1.5), Float64(2), Float64(0.000005), Float64(0.000005)))
println(mstycznych(f, fp, Float64(1.5), Float64(0.000005), Float64(0.000005), Int(60)))
println(msiecznych(f, Float64(1), Float64(2), Float64(0.000005), Float64(0.000005), Int(60)))