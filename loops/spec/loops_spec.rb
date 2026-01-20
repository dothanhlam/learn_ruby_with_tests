require_relative '../lib/loops'

RSpec.describe "Loops" do
  it "puts 5 times " do
    expect(loops).to eq(5)
  end
end
