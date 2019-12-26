#Agnieszka Kurzajewska
#nr indeksu: 244994
 module zadania

    export mbisekcji 
    export mstycznych 
    export msiecznych

    function mbisekcji(f, a::Float64, b::Float64, delta::Float64, epsilon::Float64)
        v = nothing
        r = nothing
        it = 0
        err = 0

        fa = f(a)
        fb = f(b)
        e = b - a
        e = e / 2
        r = a + e
        v = f(r)
        it = 1

        while abs(e) > delta && abs(v) > epsilon
            it = it + 1
            if sign(v) != sign(fa)
                b = r
                fb = v
            else
                a = r
                fa = v
            end
            e = e / 2
            r = a + e
            v = f(r)
        end
        return (r, v, it, err)
    end


    function mstycznych(f, pf, x0::Float64, delta::Float64, epsilon::Float64, maxit::Int)

        v = nothing
        r = nothing
        it = 0
        err = 0
        x1 = Float64(0)
        v = f(x0)

        if abs(v) < epsilon
            return (x0, v, 1, err)
        end

        for m = 1 : maxit
            if abs(pf(x0)) < epsilon
                err = 2
                return (r, v, it, err)
            end
            x1 = x0 - v / pf(x0)
            v = f(x1)
            if abs(x1 - x0) < delta || abs(v) < epsilon
                return (x1, v , m, 0)
            end
            x0 = x1
        end

        err = 1
        return (x1, v, maxit, err)
    end


    function msiecznych(f, x0::Float64, x1::Float64, delta::Float64, epsilon::Float64, maxit::Int)

        v = nothing
        r = nothing
        it = 0
        err = 0


        for m = 1 : maxit
            x2 = (f(x1)*x0 - f(x0)*x1)/(f(x1) - f(x0))
            x0 = x1
            x1 = x2
            if abs(f(x0)) < epsilon || abs(x1 - x0) < delta
                return (x1, f(x1), m, err)
            end
        end

        err = 1
        return (x1, f(x1), maxit+1, err)

    end
end
