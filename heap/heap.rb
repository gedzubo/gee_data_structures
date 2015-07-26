class Heap
  attr_accessor :heap_array, :heap_size

  def initialize(standart_array)
    @heap_array = build_max_heap(standart_array)
  end

  def add(element)
    @heap_array << element.to_i
    @heap_array = build_max_heap(@heap_array)
  end

  def remove(index)
    return if index > @heap_array.length - 1
    @heap_array.delete_at(index)
    @heap_array = build_max_heap(@heap_array)
  end

  protected

  def build_max_heap(array)
    (array.length - 1).downto(0).each do |index|
      max_heapify(array, index)
    end
    array
  end

  def max_heapify(array, i)
    heap_size = array.length - 1
    left = heap_left(i)
    right = heap_right(i)
    if left <= heap_size  and array[left] > array[i]
      largest = left
    else
      largest = i
    end
    if right <= heap_size and array[right] > array[largest]
      largest = right
    end
    if largest != i
      tmp = array[i]
      array[i] = array[largest]
      array[largest] = tmp
      max_heapify(array, largest)
    end
  end

  def heap_parent(index)
    index/2
  end

  def heap_left(index)
    index * 2
  end

  def heap_right(index)
    index * 2 + 1
  end
end
