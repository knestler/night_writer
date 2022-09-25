class WriteEnglish
  include Dictionary

  def translate_to_english(text)
    english_phrase = []
    letters = text.chars.each_slice(6).map(&:join)
    letters.each do |element|
      lowercase.each do |letter, braille| 
        english_phrase << letter if element == braille
      end
    end
    english_phrase.join
  end

end