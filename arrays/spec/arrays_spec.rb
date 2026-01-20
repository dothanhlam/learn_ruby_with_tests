require_relative '../lib/arrays'

RSpec.describe "Arrays" do
  it "does something" do
    expect(arrays).to eq(true)
  end

  it "sum array" do
    expect(sum_array([1, 2, 3])).to eq(6)
  end 

  it "substract two arrays" do
    expect(subtract_two_arrays([1, 2, 3], [1, 2, 3])).to eq(0)
  end
end
