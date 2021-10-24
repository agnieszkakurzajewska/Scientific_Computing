#Agnieszka Kurzajewska
#nr indeksu: 244994
using Plots
module zadania

# Zadanie 1

  export ilorazyRoznicowe
  export warNewton
  export naturalna
  export rysujNnfx

  function ilorazyRoznicowe(x::Vector{Float64}, f::Vector{Float64})

    n = length(x)-1

    for i = 1 : (n+1)
      for j = (n+1) : -1 : i+1
        f[j] = (f[j] - f[j-1])/(x[j] - x[j-i])
      end
    end
    return f

  end

  ######################################

  # Zadanie 2

  function warNewton(x::Vector{Float64}, fx::Vector{Float64}, t::Float64) 

    n = length(x)-1

    nt = fx[n+1];

    for i= n : -1 : 1
      nt = nt * (t - x[i]) + fx[i];
    end
    return nt;

  end

  ######################################

  # Zadanie 3

  function naturalna(x::Vector{Float64}, fx::Vector{Float64})

    n = length(x)
    poly[1,1] = 1
    poly = zeros(n+1, n+1)

    a = zeros(n)
    for j = 1:n-1
        poly[j+1, 1]=1
        poly[j+1, 2:j+1] = poly[j, 2:j+1]-x[j] * poly[j, 1:j]
    end

    for j=n : -1 : 1
      a[j] = fx[j]

      for i=1 : n-j
        a[j] = a[j] + fx[j+i] * poly[j+i, i+1]
      end

    end
    return a
  end

  ######################################

  # Zadanie 4

  function rysujNnfx(f,a::Float64,b::Float64,n::Int)

    wezly = zeros(n+1)
    wartosci = zeros(n+1)
    interval = (b - a) / n;

    for i=1 : n + 1

      wezly[i] = a + ((i-1) * interval)
      wartosci[i] = f(wezly[i])
    end

    fx = ilorazyRoznicowe(wezly, wartosci)
    range = 201
    xResult = zeros(range)
    yResult = zeros(range)
    interval2 = (b - a) / (range-1)

    for i = 1 : range

      temp = a + (i-1) * interval2
      xResult[i] = f(temp)
      yResult[i] = warNewton(wezly, fx , temp)

    end
    return xResult, yResult
  end
  

end

