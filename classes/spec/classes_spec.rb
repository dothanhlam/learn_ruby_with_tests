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

RSpec.describe 'Poodle' do
  it 'inherits from Dog' do
    expect(Poodle.superclass).to eq(Dog)
  end

  it 'can override methods' do
    dog = Dog.new('Rex')
    poodle = Poodle.new('Fluffy')
    
    expect(dog.bark).to eq('Woof!')
    expect(poodle.bark).to eq('Yip!')
  end
end

RSpec.describe 'Mixins' do
  it 'can swim' do
    dog = Dog.new('Rex')
    expect(dog).to respond_to(:swim)
    expect(dog.swim).to eq('I am swimming!')
  end
end

RSpec.describe 'Freezing' do
  it 'prevents modification of the object' do
    dog = Dog.new('Rex')
    dog.freeze
    expect(dog.frozen?).to be(true)
    expect { dog.color = 'Red' }.to raise_error(FrozenError)
  end
end



