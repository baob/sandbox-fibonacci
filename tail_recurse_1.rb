require 'benchmark'
require_relative 'lib/fibo_tr_1'
fibo = Fibo.new

puts Benchmark.measure {
  # Display the Fibonacci sequence.
  (1..50).each do |number|
    puts "fibo(#{number}) = #{fibo.fibo(number)}"
  end
}
