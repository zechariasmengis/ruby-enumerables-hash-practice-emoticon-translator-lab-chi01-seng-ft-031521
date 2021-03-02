require "yaml"
require "pry"

def load_library(path)
  my_hash = {}
  emoticon_data = YAML.load_file(path)
  emoticon_data.each do |key, value|
    my_hash[key] = {}
    my_hash[key][:english] = value[0]
    my_hash[key][:japanese] = value[1]
  end
  my_hash
end

def get_japanese_emoticon
end

def get_english_meaning(path, japanese_emoticon)
  english_meaning = ""
  load_library(path).each do |key, value|
    value.each do |key2, value2|
      if japanese_emoticon = value2
        binding.pry
        english_meaning = japanese_emoticon
      binding.pry
    end
  end
  english_meaning
end


