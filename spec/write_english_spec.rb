require 'spec_helper'
 
RSpec.describe do WriteEnglish
  it 'can translate to braille' do
    braille = WriteEnglish.new
    expect(braille.translate_to_english("0.0..0.0.00.00...00..0.0...00.0.0.0.00..0.0....00.0.0..00000..0.00...00.000.0.0.\n..000.0.00.0.0..00000.0...0.00.0..0..0..0..0..00.000..0..000..0..0..00.0...00000\n0.0...0.0...0...0.....0...0...0.000............00.0.0...0.......00..0.0.0.0.0.0.\n0..0..0.0.000.000.0.0.00\n.000..00.00..00...0.0..0\n0..0....0.0.....000.0.00\n")).to eq('kristen this should be working by tomorrow hopefully')
  end

  it 'can print out braille to terminal' do 
    braille = WriteEnglish.new
    expect(braille.write_english("0.0.\n..00\n0.0.")).to eq(["0...0.", "0.000."])
  end
end