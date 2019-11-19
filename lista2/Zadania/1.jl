#Agnieszka Kurzajewska
#nr indeksu 244994

# Zad. 1

x = [2.718281828, -3.141592654, 1.414213562, 0.577215664, 0.301029995]
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
  vector = [0.0,0.0,0.0,0.0,0.0]
  for i in 0:4
    vector[i+1] = Float32(x[5-i])*Float32(y[5-i])
  end
  vector = sort(vector)

  count = Float32(0.0)
  for i in 0:4
    count = Float32(count + vector[5-i])
  end
  println("c) ", count)


#d)
count = Float32(0.0)
  for i in 1:5
    count = Float32(count+vector[i])
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
   vector = [0.0,0.0,0.0,0.0,0.0]
   for i in 0:4
     vector[i+1] = Float64(x[5-i])*Float64(y[5-i])
   end
   vector = sort(vector)
 
   count = Float64(0.0)
   for i in 0:4
     count = Float64(count + vector[5-i])
   end
   println("c) ", count)

 
 #d)
   count = Float64(0.0)
   for i in 1:5
     count = Float64(count+vector[i])
   end
   println("d) ", count)


end

singleSum()
doubleSum()