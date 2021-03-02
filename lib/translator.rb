require "yaml"
require "pry"

def load_library(path)
  emoticon_data = YAML.load_file(path)
  emoticon_data.each do |key, value|
    my_hash = {}
    if !my_hash(key)
      my_hash(key) = {}
      binding.pry
    end
    binding.pry
  end
  emoticon_data
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end