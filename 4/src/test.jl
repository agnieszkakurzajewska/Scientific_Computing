#Agnieszka Kurzajewska
#nr indeksu: 244994

include("zadania.jl")
using .zadania
using Plots
using PyPlot

#zadanie 4
e = 2.718281828459
f(x) = e^x

plot(f)
# Zadanie 5



rysujNnfx(f, 0.0, 1.0, 5)
rysujNnfx(f, 0.0, 1.0, 10)
rysujNnfx(f, 0.0, 1.0, 15)

f(x) = (x^2)*sin(x)

rysujNnfx(f, -1.0, 1.0, 5)
rysujNnfx(f, -1.0, 1.0, 10)
rysujNnfx(f, -1.0, 1.0, 15)

# Zadanie 6

f(x) = abs(x)

rysujNnfx(f, -1.0, 1.0, 5)
rysujNnfx(f, -1.0, 1.0, 10)
rysujNnfx(f, -1.0, 1.0, 15)

f(x) = 1/(1+x^2)

rysujNnfx(f, -5.0, 5.0, 5)
rysujNnfx(f, -5.0, 5.0, 10)
rysujNnfx(f, -5.0, 5.0, 15)

