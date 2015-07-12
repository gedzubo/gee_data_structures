require "./array/randomized_select.rb"

describe Array do
  describe "#my_max" do
    it "finds the maximium value in array" do
      expect([2, 5, 2, 6, 3, 9].randomized_select(3)).to eq(3)
    end
  end
end
