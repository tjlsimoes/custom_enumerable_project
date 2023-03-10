module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
def my_each
  i = 0
  while i < self.length
    yield self[i]

    i += 1
  end

  self
end


def my_each_with_index
  i = 0
  while i < self.length
    yield self[i], i

    i += 1
  end

  self
end

def my_select(&condition)
  truth_values = []

  i = 0
  while i < self.length
    if condition.call(self[i])
      truth_values << self[i]
    end

    i += 1
  end

  truth_values
end

end
