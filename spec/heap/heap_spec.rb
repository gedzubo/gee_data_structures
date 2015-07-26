require "./heap/heap.rb"

describe Heap do

  subject(:heap) { Heap.new([2, 5, 2, 6, 3, 9]) }

  describe "#initialize" do
    it "builds heap array" do
      expect(heap.heap_array).to eq([9, 6, 5, 2, 3, 2])
    end
  end

  describe "#add" do
    it "adds new element to the @heap_array" do
      expect(heap.add(7)).to eq([9, 7, 5, 6, 3, 2, 2])
    end
  end

  describe "#remove" do
    it "removes the element using index" do
      expect(heap.remove(2)).to eq([9, 6, 2, 3, 2])
    end
  end
end
