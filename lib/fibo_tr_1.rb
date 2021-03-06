class Fibo
  def initialize(index0: 0, index1: 1)
    @index = [index0, index1]
  end

  def fibo(n)
    fibo_tr(n, *index)
  end

  private

  attr_reader :index

  # Calculate the nth Fibonacci number, f(n). Using invariants
  def fibo_tr(n, acc1, acc2)
    # puts "entering with #{[n, acc1, acc2].inspect}"
    if n.zero?
      # puts "returning acc1"
      acc1
    elsif n == 1
      # puts "returning acc2"
      acc2
    elsif n > 1
      # puts "recursing (+) with: #{[n - 1, acc2, acc2 + acc1].inspect}"
      return fibo_tr(n - 1, acc2, acc2 + acc1)
    else
      # puts "recursing (-) with: #{[n + 1, acc2 - acc1, acc1].inspect}"
      return fibo_tr(n + 1, acc2 - acc1, acc1)
    end
  end
end
