require  "yaml"# require modules here

def load_library(file)
  # code goes here
  emoticons= YAML.load_file(file)
  results={}
  results['get_meaning']={}
  results['get_emoticon']={}
  emoticons.each do  |meaning, emots|
    results['get_meaning'][emots[1]]= meaning
    results['get_emoticon'][emots[0]]= emots[1]
  end
results
end

def get_japanese_emoticon(file, emoticon)
  # code goes here
  emoticon_hash=load_library(file)
  if emoticon_hash['get_emoticon'][emoticon]
     emoticon_hash['get_emoticon'][emoticon]
   else
     "Sorry, that emoticon was not found"
   end
end

def get_english_meaning(file, emoticon)
  # code goes here
  emoticon_hash=load_library(file)
  if emoticon_hash['get_meaning'][emoticon]
    emoticon_hash['get_meaning'][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end
