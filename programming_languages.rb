def reformat_languages(languages)
   new_languages = {}
   languages.each do |type, hash|
     hash.each do |name, attributes|
       new_languages[name] ||= attributes
       new_languages[name][:style] ||= []
       new_languages[name][:style] << type
     end
   end
   new_languages
 end



=begin
require "pry"

def reformat_languages(languages)
  new_hash = { }
  
  languages.each do |style, data|
    data.each do |language, attribute|
      new_hash[language] = attribute
    end
  end
  
  ###adding the empty style key/value
  new_hash.each do |language, attributes|
      attributes[:style] = [ ]
      
  end
  
  #filling out style by reiterating through
  languages.each do |style, data|
    data.each do |original_language, attribute|
      new_hash.each do |new_language, attributes|
        if original_language == new_language
         attributes[:style].push(style)
      end
    end    
  end
end
  
  
  
  new_hash
end

