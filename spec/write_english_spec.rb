require 'spec_helper'
 
RSpec.describe do WriteEnglish
  it 'can translate to braille' do
    braille = WriteEnglish.new
    expect(braille.translate_to_english('0...0.')).to eq('k')
    # expect(phrase.translate_to_braille('kristen')).to eq(["0...0.", "0.000.", ".00...", ".00.0.", ".0000.", "0..0..", "00.00."])
  end

  xit 'can print out brail to terminal' do 
    phrase = WriteEnglish.new
    expect(braille.write_english(["0.0..0.0.00.00", "..000.0.00.0.0", "0.0...0.0...0."])).to eq(['kristen'])
  end
end