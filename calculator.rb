# 1. define a calculate method (with 3 parameters)
def calculator(first_num, second_num, operator)
# 2. check which math function and control which operation we will perform (if / else / elsif statments)
  case operator
  when "+"
    return first_num + second_num
  when "-"
    return first_num - second_num
  when "*"
    return first_num * second_num
  when "/"
    return first_num / second_num
  else
    return "invalid."
  end
  # if operator == "+"
  #   return first_num + second_num
  # elsif operator == "-"
  #   return first_num - second_num
  # elsif operator == "*"
  #   return first_num * second_num
  # elsif operator == "/"
  #   return first_num / second_num
  # else
  #   return "invalid."
  # end

# 3. perfom the calculation (with the argumetns given)
# 4. return the result
# 5. end the method
end

# we are calling the method
# puts calculator(3, 5, "-")
# puts calculator(3, 5, "*")
