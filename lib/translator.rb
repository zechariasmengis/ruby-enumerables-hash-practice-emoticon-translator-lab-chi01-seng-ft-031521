require "yaml"
require "pry"

def load_library(path)
  emoticon_translator = YAML.load_file(path)
  emoticon_translator.each do |(key, value), my_hash|
    my_hash = emoticon_translator.keys
    binding.pry
  end
  emoticon_translator
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end