class WriteBraille
  include Dictionary

  def translate_to_braille(text)
    braille_phrase = []
    text.downcase.chars.map do |char|
      lowercase.each do |letter, braille|
        if char == letter
          braille_phrase << braille
        end
      end
    end
    braille_phrase
  end

  def write_braille(text)
    row1 = []
    row2 = []
    row3 = []
    
    translate_to_braille(text).each do |line|
      row1 << line[0]+line[1]
      row2 << line[2]+line[3]
      row3 << line[4]+line[5]
    end
    
    until row1 == nil
      print row1[0..39].join #+ "\n" + 
      print row2[0..39].join #+ "\n" + 
      print row3[0..39].join

      row1 = row1[40..-1]
      row2 = row2[40..-1]
      row3 = row3[40..-1]
    end
    # require 'pry'; binding.pry
  end
end