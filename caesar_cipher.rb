class CaesarCipher
  def encrypt_message(message, shift, encrypted_message = "")
    message.each_char do |char|
      base = char.ord < 91 ? 65 : 97
      if char.ord.between?(65, 90) || char.ord.between?(97, 122)
        rotation = (((char.ord - base) + shift) % 26) + base
        encrypted_message += rotation.chr
      else
        encrypted_message += char
      end
    end
    encrypted_message
  end

  def decrypt_message(message, shift, decrypted_message="")
    message.each_char do |char|
      base = char.ord < 91 ? 65 : 97
      if char.ord.between?(65, 90) || char.ord.between?(97, 122)
        rotation = (((char.ord - base) - shift) % 26) + base
        decrypted_message += rotation.chr
      else
        decrypted_message += char
      end
    end
    decrypted_message
  end
end