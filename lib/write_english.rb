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
        x = text.split("\n").map { |row| row.scan(/../)}
        o = x.each_slice(3) do |a| 
          t = a.transpose
          t.each do |letter|
            english << letter.join
          end
        end
        english

  end
end