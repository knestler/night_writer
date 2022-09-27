require 'spec_helper'

RSpec.describe FileParser do

  before :each do 
    @file_parser = FileParser.new
  end

  it 'can read a file' do 
    allow(File).to receive(:read).and_return("is this real life")
    @file_parser.read
    expect(@file_parser.instance_variable_get(:@incoming_text)).to eq("is this real life")
  end

  it 'can return the number of characherts included in printed file' do
    ARGV[0] = 'message.txt'
    ARGV[1] = 'braille.txt'
    expect(@file_parser.text_count).to eq("Created braille.txt containing 0 characters")
  end
end 