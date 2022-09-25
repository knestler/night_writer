class WriteBraille
  include Dictionary

  def translate_to_braille(text)
    braille_phrase = []
    text.downcase.chars.map {|char| lowercase.each { |letter, braille| braille_phrase << braille if char == letter}}; braille_phrase
  end

  def write_braille(text)
    row1 = []; row2 = []; row3 = []
    translate_to_braille(text).each { |line|row1 << line[0]+line[1]; row2 << line[2]+line[3]; row3 << line[4]+line[5]}
    until row1[40..-1] == nil
      return row1[0..39].join("\n"), row2[0..39].join("\n"), row3[0..39].join
      row1 = row1[40..-1]; row2 = row2[40..-1]; row3 = row3[40..-1]
    end
    if row1[40..-1] == nil
      return row1[0..39].join + "\n" + row2[0..39].join + "\n" + row3[0..39].join
    end
  end


end