# Agnieszka Kurzajewska
# 244994

# Task 4

    function doubleMin()

    e =Float64(1.0)
    d = Float64(1.0)

    while ( Float64( d * Float64(1/d) ) == Float64(1) )

        d = nextfloat(Float64(d))
        e = e+eps(Float64)

    end

    if d == e
        println("Min: ", d)
    end
end

doubleMin()
