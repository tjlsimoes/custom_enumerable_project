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

def my_all?(&condition)

    truth_values = []

    i = 0
    while i < self.length
      if condition.call(self[i])
        truth_values << self[i]
      end

      i += 1
    end

    truth_values.length == self.length
  

  # Does not consider:
  #   - With no block given and no argument, returns true if 
  #      self contains only truthy elements, false otherwise.
  #   - With a block given and no argument, calls the block with 
  #      each element in self; returns true if the block returns 
  #      only truthy values, false otherwise.
  #   - If argument obj is given, returns true if obj.=== every element, 
  #      false otherwise.


end

end
