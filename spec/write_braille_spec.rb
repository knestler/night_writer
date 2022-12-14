require 'spec_helper'
 
RSpec.describe do WriteBraille
  it 'can translate to braille' do
    phrase = WriteBraille.new
    expect(phrase.translate_to_braille('k')).to eq(['0...0.'])
    expect(phrase.translate_to_braille('kristen')).to eq(["0...0.", "0.000.", ".00...", ".00.0.", ".0000.", "0..0..", "00.00."])
  end

  it 'can print out brail to terminal' do 
    phrase = WriteBraille.new
    expect(phrase.write_braille('kristen this should be working by tomorrow hopefully')).to eq("0.0..0.0.00.00...00..0.0...00.0.0.0.00..0.0....00.0.0..00000..0.00...00.000.0.0.\n..000.0.00.0.0..00000.0...0.00.0..0..0..0..0..00.000..0..000..0..0..00.0...00000\n0.0...0.0...0...0.....0...0...0.000............00.0.0...0.......00..0.0.0.0.0.0.\n0..0..0.0.000.000.0.0.00\n.000..00.00..00...0.0..0\n0..0....0.0.....000.0.00\n")
  end
end