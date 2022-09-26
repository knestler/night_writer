require 'spec_helper'
 
RSpec.describe do WriteEnglish
  it 'can translate to braille' do
    braille = WriteEnglish.new
    expect(braille.translate_to_english("0.0..0.0.00.00\n..000.0.00.0.0\n0.0...0.0...0.")).to eq('kristen')
  end

  it 'can print out braille to terminal' do 
    braille = WriteEnglish.new
    expect(braille.write_english("0.0.\n..00\n0.0.")).to eq([["0.", "..", "0."], ["0.", "00", "0."]])
  end
end