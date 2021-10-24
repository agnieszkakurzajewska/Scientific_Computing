# Agnieszka Kurzajewska
# 244994

# Task 5

x = [2.718281828, -3.141592654, 1.414213562, 0.5772156649, 0.3010299957]
y = [1486.2497, 878366.9879, -22.37492, 4773714.647, 0.000185049]

size = length(x)


function singleSum()
  println("Float32:")

  #a)
  count = Float32(0.0)

  for i = 1:size
    count += x[i] * y[i]
  end

  println("a) ", count)

  #b)
  count = Float32(0.0)

  for i in 1:size-1
    count = Float32(count + Float32(Float32(x[size - i]) * Float32(y[size - i])))
  end

  println("b) ", count)

  #c)

  v = [0.0,0.0,0.0,0.0,0.0]

  for i in 1:size
    v[i] = x[i] * y[i]
  end

  v = sort(v)

  countPositive = Float32(0.0)
  countNegative = Float32(0.0)
  countSum = Float32(0.0)

  for i in 1:size-1

    if v[i]>=0
      countPositive = countPositive + v[size - i]
    else
      countNegative = countNegative + v[size - i]
    end

    countSum = countPositive + countNegative
  end

  println("c) ", countSum)

  #d)

  countPositive = Float32(0.0)
  countNegative = Float32(0.0)
  countSum = Float32(0.0)

  for i in 1:size

    if v[i]>=0
      countPositive = countPositive + v[i]
    else
      countNegative = countNegative + v[i]
    end

    countSum = countPositive + countNegative
  end

  println("d) ", count)
end


function doubleSum()
  println("\nFloat64:")

  #a)

  count = Float64(0.0)

  for i = 1 : size
    count += x[i] * y[i]
  end

  println("a) ", count)

  #b)

  count = Float64(0.0)

  for i in 0:size-1
    count = Float64(count + Float64(x[size - i]) * Float64(y[size - i]))
  end 

  println("b) ", count)

  #c)

  v = [0.0,0.0,0.0,0.0,0.0]

  for i in 1:size
    v[i] = x[i] * y[i]
  end

  v = sort(v)

  countPositive = Float64(0.0)
  countNegative = Float64(0.0)
  countSum = Float64(0.0)

  for i in 1:size-1

    if v[i]>=0
      countPositive = countPositive + v[size - i]
    else
      countNegative = countNegative + v[size - i]
    end

    countSum = countPositive + countNegative
  end

  println("c) ", countSum)

  #d)

  countPositive = Float64(0.0)
  countNegative = Float64(0.0)
  countSum = Float64(0.0)

  for i in 1:size

    if v[i]>=0
      countPositive = countPositive + v[i]
    else
      countNegative = countNegative + v[i]
    end

    countSum = countPositive + countNegative
  end

  println("d) ", count)

end

singleSum()
doubleSum()