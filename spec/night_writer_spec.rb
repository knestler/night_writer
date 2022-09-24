require './lib/dictionary/'

RSpec.describe do Dictionary
  it 'can work' do
    dictionary = Dictionary.new
    expect(dictionary.translate_to_braille('kristen')).to eq('0.....')
  end
end