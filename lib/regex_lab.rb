def starts_with_a_vowel?(word)
  !!word.match(/^[aeiouAEIOU]/)
end

def words_starting_with_un_and_ending_with_ing(text)
  text.split.grep(/^un.*ing$/)
end

def words_five_letters_long(text)
  text.split.grep(/^\w{5}$/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  !!text.match(/^[A-Z].*[.,\/#!$%\^&\*;:{}=\-_`~()]$/)
end

def valid_phone_number?(phone)
  if !!phone.match(/^[0-9]{10}$/)
    return true
  elsif !!phone.match(/^\([0-9]{3}\)[0-9]{3}-[0-9]{4}$/)
    return true
  elsif !!phone.match(/^[0-9]{3} [0-9]{4} [0-9]{3}$/)
    return true
  elsif !!phone.match(/^\([0-9]{3}\)[0-9]{7}$/)
    return true
  else
    return false
  end
end
