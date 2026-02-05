require_relative '../lib/classes'

RSpec.describe 'Dog' do
  it 'exists' do
    expect(defined?(Dog)).to eq('constant')
    expect(Dog).to be_a(Class)
  end

  it 'can be instantiated with a name' do
    fido = Dog.new('Fido')
    expect(fido).to be_an_instance_of(Dog)
  end

  it 'can bark' do
    fido = Dog.new('Fido')
    expect(fido.bark).to eq('Woof!')
  end

  it 'has a name' do
    fido = Dog.new('Fido')
    expect(fido.name).to eq('Fido')
  end

  it 'can change color' do
    fido = Dog.new('Fido')
    fido.color = 'Brown'
    expect(fido.color).to eq('Brown')
  end
end
