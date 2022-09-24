class NightWriter
  
  reader = File.open(ARGV[0], 'r')
  incoming_text = reader.read
  reader.close

  text_count =  "Created 'braille.txt' containing #{incoming_text.length} characters"

  return_letter = 
  writer = File.open(ARGV[1], 'w')
  writer.write(text_count)
  writer.close

end

