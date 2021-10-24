#Agnieszka Kurzajewska
#nr indeksu 244994

# Zad. 3

include("hilb.jl");
include("matcond.jl");

println("Macierz Hilberta:")

for n=1:10
    A = hilb(n)
    println(cond(A))
    println(rank(A))
    
    x = fill(1.0, (n,1))
    b = A*x
    gauss = A\b
    println("Eliminacja Gaussa: ", norm(x-gauss)/norm(x))
    secondMethod = inv(A)*b
    println("Druga metoda: ", norm(x-secondMethod)/norm(x))
end

println("Losowa macierz:")

nValues = [5, 10, 20]
cValues = [0, 1 , 3, 7, 12, 16]

for n in nValues
    for c in cValues
        A = matcond(n, Float64(10^c))
        println(rank(A))
        println(cond(A))
        
        x = fill(1.0, (n,1))
        b = A*x
        gauss = A\b
        println("Eliminacja Gaussa: ", norm(x-gauss)/norm(x))
        secondMethod = inv(A)*b
        println("Druga metoda: ", norm(x-secondMethod)/norm(x))
    end
  
end



   