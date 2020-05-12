# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)
  # code goes here
  emoticons = YAML.load_file(file_path)
  emoticons.reduce({}) do |memo, (k, v)|
    memo[k] = {:english => v[0], :japanese => v[1]}
    memo
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  emoticon_hash = load_library(file_path)
  emoticon_hash.each do |k, v|
    if v[:japanese] == emoticon
      binding.pry
      return v[:english]
    end
    binding.pry
  end
  return "Sorry, emoticon not found."
end

load_library("./lib/emoticons.yml")
