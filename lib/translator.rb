require "yaml"
require "pry"

def load_library(path)
  my_hash = {}
  emoticon_data = YAML.load_file(path)
  emoticon_data.each do |key, value|
    my_hash[key] = {}
    my_hash[key][:english] = {l}
    my_hash[key][:japanese] = {}
  end
  my_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end