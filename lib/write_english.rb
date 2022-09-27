class WriteEnglish
  include Dictionary

  def translate_to_english(text)
    english_phrase = []
    write_english(text).each { |element|
      lowercase_alphabet.each { |letter, braille|
        english_phrase << letter if element == braille
    }}
    english_phrase.join
  end
      
  def write_english(text)
    english = []
    text.split("\n").map { |row| 
      row.scan(/../)}.each_slice(3) { |a| 
        a.transpose.each { |letter|
        english << letter.join}}
    english
  end
end