def first_factorial(num)
  (1..num).reduce(:*) || 1
end

def first_factorial(num)
  num == 0 ? 1 : num * first_factorial(num - 1)
end
