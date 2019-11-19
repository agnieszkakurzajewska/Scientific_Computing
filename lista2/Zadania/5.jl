# Agnieszka Kurzajewska
# nr indeksu: 244994

pp = Float32(0.001)
r = Float32(3)

val = Float32(0)
for i = 1:40
    if  i == 1
        val = Float32(pp + r*pp*(1-pp))
        global val
        println(val)
    else
      val = Float32(val + r*val*(1-val))
        global val
        println(val)
    end
end

println()

PP = Float64(0.001)
R = Float64(3)

val = Float64(0)
for i = 1:40
    if  i == 1
        val = Float64(PP + R*PP*(1-PP))
        global val
        println(val)
    else
      val = Float64(val + R*val*(1-val))
        global val
        println(val)
    end
end

println()

val = Float64(0)
for i = 1:10
    if  i == 1
        val = Float32(pp + r*pp*(1-pp))
        global val
        println(val)
    else
      val = Float32(val + r*val*(1-val))
        global val
        println(val)
    end
end
round(val, digits=3)

for i = 11:40
  val = Float32(val + r*val*(1-val))
    global val
    println(val)
end