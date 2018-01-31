require 'pry'

class Translator
  attr_reader :dictionary

  def initialize
    @dictionary = {"a" => ".-",
                    "b" => "-...",
                    "c" => "-.-.",
                    "d" => "-..",
                    "e" => ".",
                    "f" => "..-.",
                    "g" => "--.",
                    "h" => "....",
                    "i" => "..",
                    "j" => ".---",
                    "k" => "-.-",
                    "l" => ".-..",
                    "m" => "--",
                    "n" => "-.",
                    "o" => "---",
                    "p" => ".--.",
                    "q" => "--.-",
                    "r" => ".-.",
                    "s" => "...",
                    "t" => "-",
                    "u" => "..-",
                    "v" => "...-",
                    "w" => ".--",
                    "x" => "-..-",
                    "y" => "-.--",
                    "z" => "--..",
                    "1" => ".----",
                    "2" => "..---",
                    "3" => "...--",
                    "4" => "....-",
                    "5" => ".....",
                    "6" => "-....",
                    "7" => "--...",
                    "8" => "---..",
                    "9" => "----.",
                    "0" => "-----",
                    " " => " "}
                    @string_array = []
                    @string_arr = []
                    @file_text
  end

  def eng_to_morse(string)
    downcase_string = string.downcase
    all_string = downcase_string.to_s
    new_string = ""
    @string_array = all_string.split("")
    @string_array.each do |letter|
      new_string += @dictionary[letter]
    end
    new_string
  end

  def from_file(filename)
    file_path = "./lib/#{filename}"
    @file_text = File.open(file_path)
    translation = ""
    string_arr = []
    input_array = []

    @file_text.each_char do |char|
      string_arr.push(char)
    end

    input_array = string_arr[0 .. -2]
    input_array.each do |char|
      char = char.downcase
      translation += "#{@dictionary[char]}"
    end

    translation
  end


end
