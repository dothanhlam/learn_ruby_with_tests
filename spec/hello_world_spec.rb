
require 'hello_world'

RSpec.describe "Hello World" do
  it "says hello" do
    expect(hello).to eq("Hello, world")
  end
end
