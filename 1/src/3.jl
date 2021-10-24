# Agnieszka Kurzajewska
# nr indeksu: 244994

# Zad. 3

function lookAtBytes(interval, start)
    
    nextValue = Float64(start)

    for i in 0:5

        str1 = bitstring(Float64(start + i * interval))
        str2 = bitstring(nextValue)

        if Float64(start + i * interval) == Float64(nextValue)
            println("             ",str1)
        else
            println("Interval δ:  ",str1,"\nNextFloat:   ",str2, "\n")
        end

        nextValue = nextfloat(Float64(nextValue))
    end
end

function printValues()

    #2^(-52)
    interval = Float64((2)^(-52))
    println("δ = 2^(-52):")

    println("[1,2]")
    lookAtBytes(interval, Float64(1.0))

    println("[0.5,1]")
    lookAtBytes(interval, Float64(1.5))

    println("[2,4]")
    lookAtBytes(interval, Float64(2.0))

    #2^(-51)
    interval = Float64((2)^(-51))
    println("\nδ = 2^(-51):")

    println("[1,2]")
    lookAtBytes(interval, Float64(1.0))

    println("[0.5,1]")
    lookAtBytes(interval, Float64(1.5))

    println("[2,4]")
    lookAtBytes(interval, Float64(2.0))

    #2^(-53)
    interval = Float64((2)^(-53))
    println("\nδ = 2^(-53):")

    println("[1,2]")
    lookAtBytes(interval, Float64(1.0))

    println("[0.5,1]")
    lookAtBytes(interval, Float64(1.5))

    println("[2,4]")
    lookAtBytes(interval, Float64(2.0))

end


printValues()

