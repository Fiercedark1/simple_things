class Encryptor

  def cipher
    {'a' => 'p','b' => 'q','c' => 'r','d' => 's',
     'e' => 't','f' => 'u','g' => 'v','h' => 'z',
     'i' => 'w','j' => 'y','k' => 'x','l' => 'a',
     'm' => 'b','n' => 'c','o' => 'd','p' => 'e',
     'q' => 'f','r' => 'g','s' => 'h','t' => 'i',
     'u' => 'j','v' => 'k','w' => 'l','x' => 'm',
     'y' => 'n','z' => 'o'}
  end
  def encrypt(message)
    letters = message.split("")

    results = []
    letters.collect do |x|
      low_letter = x.downcase
      new_letter = cipher[low_letter]
      results.push(new_letter)
    end
    results.join
  end

  def decrypt(token)
    results = []

    letters = token.split("")
    letters.collect do |x|
      lower_them = x.downcase
      de_lettered = cipher.key(lower_them)
      results.push(de_lettered)
    end
    results.join
  end
end
