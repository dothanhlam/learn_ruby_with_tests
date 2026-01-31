require_relative '../lib/hashes'

RSpec.describe 'Hashes' do
  it 'converts numbers to sentences' do
    expect(number_to_sentence(1)).to eq('one')
    expect(number_to_sentence(13)).to eq('thirteen')
    expect(number_to_sentence(20)).to eq('twenty')
    expect(number_to_sentence(21)).to eq('twenty one')
    expect(number_to_sentence(123)).to eq('one hundred and twenty three')
  end
end
