require_relative 'main' # Подключаем файл с классом Function

def test_initialize
  function = Function.new(2, 3, 4, 0, 5, 1)
  if function.a == 2 && function.b == 3 && function.c == 4 &&
    function.x_start == 0 && function.x_end == 5 && function.dx == 1
    puts "initialize: Passed"
  else
    puts "initialize: Failed"
  end
end

def test_calculate_function
  function = Function.new(2, 3, 4, 0, 5, 1)
  result1 = function.calculate_function(0)
  result2 = function.calculate_function(1)
  result3 = function.calculate_function(-1)
  result4 = function.calculate_function(2)

  if result1 == 0 && result2 == 3 && result3 == 3 && result4 == 6
    puts "calculate_function: Passed"
  else
    puts "calculate_function: Failed"
  end
end

def test_check_params
  function = Function.new(2, 3, 4, 0, 5, 1)
  result1 = function.check_params(2, 3, 4)
  result2 = function.check_params(1, 3, 4)

  if result1 == false && result2 == false
    puts "check_params: Passed"
  else
    puts "check_params: Failed"
  end
end

test_initialize
test_calculate_function
test_check_params