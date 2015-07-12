class Array
  def my_max
    array = self.dup
    my_max = array[0]
    (1..array.length - 1).each do |index|
      if my_max < array[index]
        my_max = array[index]
      end
    end
    my_max
  end
end
