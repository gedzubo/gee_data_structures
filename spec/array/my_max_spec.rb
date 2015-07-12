require "./array/my_max.rb"

describe Array do
  describe "#my_max" do
    it "finds the maximium value in array" do
      expect([2, 5, 2, 6, 3, 9].my_max).to eq(9)
    end
  end
end
