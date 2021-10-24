# Agnieszka Kurzajewska
# nr indeksu: 244994

# Zad. 3

#pokazuję pierwsze 5 liczb, więc nie ustawiam górnej wartości
#Jeśli wartość następnej liczby obliczonej po dodaniu interwału rózni się od wartości nexFloat, drukowane są obie wersje.


function lookAtBytes(interval, start) #interwal to załozony dostęp miedzy kolejnymi liczbami a start to liczba, od której zaczynamy liczenie
    
    nextValue = Float64(start)

    for i in 0:5

        str1 = bitstring(Float64(start + i * interval)) #po dodaniu interwału
        str2 = bitstring(nextValue) #po dodaniu nextfloat

        if Float64(start + i * interval) == Float64(nextValue)
            println("           ",str1)
        else
            println("Przeskok:  ",str1,"\nNextFloat: ",str2, "\n")
        end

        nextValue = nextfloat(Float64(nextValue))
    end
end

function printValues()

    #dla delty -52
    interval = Float64((2)^(-52))
    println("odstęp równy 2^(-52)")

    println("[1,2]")
    lookAtBytes(interval, Float64(1.0))

    println("[0.5,1]")
    lookAtBytes(interval, Float64(1.5))

    println("[2,4]")
    lookAtBytes(interval, Float64(2.0))

    #dla delty -51
    interval = Float64((2)^(-51))
    println("\nodstęp równy 2^(-51)")

    println("[1,2]")
    lookAtBytes(interval, Float64(1.0))

    println("[0.5,1]")
    lookAtBytes(interval, Float64(1.5))

    println("[2,4]")
    lookAtBytes(interval, Float64(2.0))

    #dla delty -53
    interval = Float64((2)^(-53))
    println("\nodstęp równy 2^(-53)")

    println("[1,2]")
    lookAtBytes(interval, Float64(1.0))

    println("[0.5,1]")
    lookAtBytes(interval, Float64(1.5))

    println("[2,4]")
    lookAtBytes(interval, Float64(2.0))

end


printValues()

