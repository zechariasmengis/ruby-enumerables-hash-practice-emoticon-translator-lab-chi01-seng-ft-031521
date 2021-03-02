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

def get_japanese_emoticon(path, english_emoticon)
  japanese_translation = ""
  load_library(path).each do |key, value|
    value.each do |key2, value2|
      if english_emoticon == value2
        japanese_tanslation = value[:japanese]
        binding.pry
      end
    end
  end
  japanese_translation
end

def get_english_meaning(path, japanese_emoticon)
  english_meaning = ""
  load_library(path).each do |key, value|
    value.each do |key2, value2|
      if japanese_emoticon == value2
        english_meaning = key
      end
    end
  end
  if english_meaning == ""
    english_meaning = "Sorry, that emoticon was not found"
  end
  english_meaning
end