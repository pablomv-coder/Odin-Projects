
#iterative method
def fibs(n)
    fib_sequence = [0, 1]
    (n - 2).times do
      fib_sequence << fib_sequence[-1] + fib_sequence[-2]
    end
    fib_sequence.take(n)
end

#recursive method

def fibs_rec(n, fib_sequence = [0, 1])
    return [] if n == 0
    return fib_sequence.take(n) if n <= 2
  
    next_fib = fib_sequence[-1] + fib_sequence[-2]
    fibs_rec(n - 1, fib_sequence + [next_fib])
end
  