# Agnieszka Kurzajewska
# nr indeksu: 244994

#Zadanie 2

function halfKahan() 

    hk = Float16(Float16(Float16(Float16(4) / Float16(3)) - Float16(1)) * 3) - Float16(1)
    hm = eps(Float16)

    println("Float16: obliczone z wyrazenia: ", hk, ", obliczone przez funkcję eps(): ", hm)

end


function singleKahan() 

    sk = Float32(Float32(Float32(Float32(4) / Float32(3)) - Float32(1)) * 3)-Float32(1)
    sm = eps(Float32)

    println("Float32: obliczone z wyrazenia: ", sk, ", obliczone przez funkcję eps(): ", sm)

end


function doubleKahan() 

    dk = Float64(Float64(Float64(Float64(4) / Float64(3))-Float64(1)) * 3)-Float64(1)
    dm = eps(Float64)

    println("Float64: obliczone z wyrazenia: ", dk, ", obliczone przez funkcję eps(): ", dm)

end

halfKahan()
singleKahan()
doubleKahan()
