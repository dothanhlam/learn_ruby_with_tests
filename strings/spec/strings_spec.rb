require_relative '../lib/strings'

RSpec.describe "Strings" do
  it "makes sure the string is correct" do
    expect(strings).to eq("abcdefghijklmnopqrstuvwxyz")
  end

  it "concatenates two strings" do
    expect(concatenate_strings("abc", "def")).to eq("abcdef")
  end 

  it "raises an error if arguments are not strings" do
    expect { concatenate_strings(1, 2) }.to raise_error(ArgumentError)  
end
