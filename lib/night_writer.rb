# require './lib/dictionary/'
# require './lib/write_braille/'
require './spec/spec_helper/'

reader = File.open(ARGV[0], 'r')
incoming_text = reader.read
reader.close

braille = WriteBraille.new.write_braille(incoming_text)

writer = File.open(ARGV[1], 'w')
writer.write(braille)

text_count =  "Created #{ARGV[1]} containing #{incoming_text.length} characters"
p text_count

writer.close



