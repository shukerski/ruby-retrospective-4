def fibonacci(n)
  return 1 if n == 1 or n == 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

def lucas(n)
   return 2 if n == 1
   return 1 if n == 2
   lucas(n - 1) + lucas(n - 2)
end

def summed(n)
  fibonacci(n) + lucas(n)
end

def series(name, n)
  case name
    when "fibonacci" then fibonacci(n)
    when "lucas"     then lucas(n)
    when "summed"    then summed(n)
  end
end

