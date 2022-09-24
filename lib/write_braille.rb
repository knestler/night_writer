class WriteBraille
  include Dictionary

def translate_to_braille(text)
    braille_phrase = []
    text.downcase.chars.each do |char|
      lowercase.each do |letter, braille|
        if char == letter
          braille_phrase << braille
        end
      end
    end
    braille_phrase
  end
end