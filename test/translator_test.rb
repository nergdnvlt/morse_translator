require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

require './lib/translator.rb'

class Translator_Test < Minitest::Test
  def test_instance_of_translator
    translator = Translator.new

    assert_instance_of Translator, translator
  end

  def test_translate_lowercase_single
    translator = Translator.new

    translator.eng_to_morse("n")

    assert_equal "-.", translator.eng_to_morse("n")
  end

  def test_translate_lowercase
    translator = Translator.new

    translator.eng_to_morse("hello world")

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
  end
end
