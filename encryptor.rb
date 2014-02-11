class Encryptor

  def cipher
    {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
     'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
     'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
     'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
     'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
     'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
     'y' => 'l', 'z' => 'm'}
  end 

  def encrypt_letter(letter)#this only encrypts single letters
    cipher[letter.downcase] #needs to [] because we are dealing with a hash
  end 
  
  # def encrypt(string) ***this is the long way
  #   #take the string
  #   #split into an array of letter. ie ["hello"] becomes ["h","e","l","l","o"]
  #   letters = string.split("")
  #   result = []
  #   #iterate over each letter
  #   #encrypt each letter
  #   letters.each do |letter|
  #     encrypted_letter = encrypt_letter(letter)
  #     result.push(encrypted_letter)
  #   end
  #   #mash it all back together
  #   result.join
  # end 

  def encrypt(string) #***this is the short
    letters = string.split("")
    result = letters.collect do |letter| 
      encrypt_letter(letter)
    end 
    result.join
  end

  def decrypt(string)
    encrypt(string) #wich only workds becuse a = n and n = a in the cipher
  end

end