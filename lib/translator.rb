require "yaml"
require "pry"

def load_library(path)
  emoticon_data = YAML.load_file(path)
  emoticon_data.each_with_object({}) do |(key, value), my_hash|
    my_hash = emoticon_data.values
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