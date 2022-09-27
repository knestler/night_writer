require './spec/spec_helper/'

reader = File.open(ARGV[0], 'r')
incoming_text = reader.read
reader.close

english= WriteEnglish.new.translate_to_english(incoming_text)

writer = File.open(ARGV[1], 'w')
writer.write(english)

text_count =  "Created #{ARGV[1]} containing #{incoming_text.length} characters"
p text_count

writer.close