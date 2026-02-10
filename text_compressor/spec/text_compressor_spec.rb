

require_relative '../../spec/spec_helper'
require_relative '../lib/text_compressor'

RSpec.describe TextCompressor do
  describe '#initialize' do
    it 'creates a new instance' do
      expect(TextCompressor.new).to be_a(TextCompressor)
    end
  end

  describe '#compress' do
    it 'compresses a text' do
      text = 'hello world'
      expect(TextCompressor.new.compress(text)).to eq([0, 1])
    end

    it 'compresses a text with repeated words' do
      text = 'hello hello world'
      expect(TextCompressor.new.compress(text)).to eq([0, 0, 1])
    end
  end
end
