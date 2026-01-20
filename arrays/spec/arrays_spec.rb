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


  it "return the unique value" do
    expect(unique_value([1, 2, 3, 3, 4, 4, 5])).to eq([1, 2, 3, 4, 5])
  end

  it "value iterator" do
    expect(value_iterator([1, 2, 3])).to eq([2, 3, 4])
  end

  it "value iterator with index" do
    expect(value_iterator_with_index([1, 2, 3])).to eq([1, 3, 5])
  end
end
