class Array
  def my_min
    array = self.dup
    my_min = array[0]
    (1..array.length - 1).each do |index|
      if my_min > array[index]
        my_min = array[index]
      end
    end
    my_min
  end
end
