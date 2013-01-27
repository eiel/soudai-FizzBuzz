def fizzbuzz(n)
  if n % 15 == 0
    "FizzBUzz"
  elsif n % 5 == 0
    "Buzz"
  elsif n % 3 == 0
    "Fizz"
  else
    n.to_s
  end
end

(1..100).each do |n|
  puts fizzbuzz(n)
end
