#Agnieszka Kurzajewska
#nr indeksu: 244994

c=[-2.,-2, -2, -1, -1, -1, -1]
x=[1, 2, 1.99999999999999, 1, -1, 0.75, 0.25]

for i = 1:7
    println()
    val = Float64(0)
    for j = 1:40
        if j == 1
            val = (x[i]^2)+c[i]
            println(val)
        else
            val = val*val +c[i]
            println(val)
        end
    end
end    