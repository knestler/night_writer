class FileParser

  def initialize 
    @incoming_text = ("")
    @type = ("")
  end 

  def read
    @incoming_text = File.read(ARGV[0])
    # @incoming_text = reader.read
    if ARGV[0] == 'message.txt'
      @type = WriteBraille.new.write_braille(@incoming_text)
    else ARGV[0] == 'braille.txt'
      @type = WriteEnglish.new.translate_to_english(@incoming_text)
    # @type.close
    end
  end
  
  def text_count
    if ARGV[0] == 'message.txt'
      p "Created #{ARGV[1]} containing #{@incoming_text.length*6} characters"
    elsif ARGV[0] == 'braille.txt'
      p "Created #{ARGV[1]} containing #{((@incoming_text.length-3)/6)} characters"
    end 
  end
  
  def write
    writer = File.open(ARGV[1], 'w')
    writer.write(@type)
    writer.close
  end

  def start
    read
    write
    text_count
  end
end