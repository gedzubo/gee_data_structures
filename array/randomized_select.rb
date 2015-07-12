class Array
  def randomized_select(n_element)
    array = self.dup
    #n_element = n_element - 1
    randomized_min_select_method(array, 0, array.length - 1, n_element)
  end

  protected

  def randomized_min_select_method(array, beginning, ending, n_element)
    return array[beginning] if beginning == ending
    random = randomized_partition(array, beginning, ending)
    pivot = random - beginning + 1
    if n_element == pivot
      return array[random]
    elsif n_element < pivot
      return randomized_min_select_method(array, beginning, random - 1, n_element)
    else
      return randomized_min_select_method(array, random + 1, ending, n_element - pivot)
    end
  end

  def randomized_partition(array, beginning, ending)
    prng = Random.new
    random_index = prng.rand(beginning..ending)
    exchange(array, ending, random_index)
    partition(array, beginning, ending)
  end

  def partition(array, beginning, ending)
    last = array[ending]
    tmp = beginning - 1
    (beginning..ending-1).each do |index|
      if array[index] <= last
        tmp = tmp + 1
        exchange(array, tmp, index)
      end
    end
    exchange(array, tmp + 1, ending)
    tmp + 1
  end

  def exchange(array, x, y)
    tmp = array[y]
    array[y] = array[x]
    array[x] = tmp
  end
end
