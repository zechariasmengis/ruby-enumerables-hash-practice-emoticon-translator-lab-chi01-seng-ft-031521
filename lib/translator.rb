require "yaml"
require "pry"

def load_library(path)
  emoticon_data = YAML.load_file(path)
  emoticon_data.each do |key, value|
    my_hash = {(key) => {:english => (value)(0), :japanese => (value)(1)
    }}
    binding.pry
  end
    binding.pry
  emoticon_data
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end