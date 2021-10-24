# Agnieszka Kurzajewska
# nr indeksu: 244994

# Zad. 4.

    function doubleMin()

    d = Float64(1.0) #zaczynamy szukanie liczby od jedynki
        e =Float64(1.0)

    while ( Float64( d * Float64(1/d) ) == Float64(1) )

        d = nextfloat(Float64(d))
        e = e+eps(Float64)

    end

    if d == e
        println("Najmniejsza wyznaczona liczba: ", d)
    end
end

doubleMin()
