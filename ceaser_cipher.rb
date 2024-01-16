require 'pry-byebug'
def ceaser_cipher(message, shift, decrypt=false)

  s = decrypt ? (26 - shift) % 26 : shift
  n = s > 0 ? s : 26 + (s % 26)

  # Convert the message to an array using split method
  arr_message = message.split('')
  # Convert each character from the array to its ascii number
  c = arr_message.map do |data|
    data.ord
  end
  # Code the message according to the shift
   final_wrap = c.map do |l|
      if(l >= 65 && l <= 90) 
         letter = (((l - 65 + n) % 26) + 65).chr
      end
      if(l >= 92 && l <= 122)
         letter = (((l - 97 + n) % 26) + 97).chr
      end
   end
    final_wrap.join("")
end
print "------ Welcome to Caeser Cipher cryptography -----"
print "\n\n\nEnter your message to encrypt: "
message = gets.chomp

print "\nEnter the shift: "
shift = gets.chomp.to_i
print "\nHere is your encrypted code: "
p ceaser_cipher(message, shift)
