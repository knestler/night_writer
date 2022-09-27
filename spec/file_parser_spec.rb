require 'spec_helper'

RSpec.describe FileParser do

  before :each do 
    @file_parser = FileParser.new
  end

  it 'can read a file' do 
    allow(File).to receive(:read).and_return("is this real life") #("message.txt", "r")
    @file_parser.read
    expect(@file_parser.instance_variable_get(:@incoming_text)).to eq("is this real life")
  end

  xit 'can return the number of characherts included in printed file' do
    require 'pry'; binding.pry
    expect(@file_parser.text_count).to eq(17)

  end

  xit 'can write a new file' do
    expect(@file_parser.write).to eq( )

  end
end 