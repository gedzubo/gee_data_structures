require "./array/my_min.rb"

describe Array do
  describe "#my_min" do
    it "finds the minimum value in array" do
      expect([2, 5, 2, 6, 3, 9].my_min).to eq(2)
    end
  end
end
