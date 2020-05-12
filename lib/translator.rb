# require modules here
require 'yaml'
require 'pry'

def load_library(file_name)
  # code goes here
  emoticons = file_name.load_file
  emoticons.reduce({}) do |memo, (k, v)|
    v.map { |e|
      memo[k] = {
        :english => v[0],
        :japanese => v[1]
      }
    }
    memo
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
