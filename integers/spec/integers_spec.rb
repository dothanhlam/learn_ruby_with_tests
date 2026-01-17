require_relative '../lib/integers'

RSpec.describe "Integers" do
  it "1 should be an integer" do
    expect(integers).to eq(1)
  end

  it "sum of 1 and 2 should be 3" do
    expect(sum(1, 2)).to eq(3)
  end

  it "sum of 1 and 1 should be 2" do
    expect(sum(1, 1)).to eq(2)
  end

  it "product of 1 and 2 should be 2" do
    expect(product(1, 2)).to eq(2)
  end
end
