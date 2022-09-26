class WriteEnglish
  include Dictionary

  def translate_to_english(text)
    english_phrase = []
    write_english(text).each do |element|
      lowercase.each do |letter, braille| 
        english_phrase << letter if element.join == braille
      end
    end
    english_phrase.join
  end

  def write_english(text)
    x = text.split("\n").map do |row|
      row.scan(/../)
    end
    x = x.transpose
  end
end