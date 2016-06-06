def ceaser_cipher(str, num)
	alpha = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
	if num > 25
		num = num - 26
	end
	encrypted_alpha = alpha.rotate(num)
	encrypted_message = []
	original_letters = str.split("")
	original_letters.each do |letter|
		if letter == " "
	encrypted_letter = " "
		elsif letter == ","
			encrypted_letter = ","
		elsif letter == "."
			encrypted_letter = "."
		else 
				if letter == letter.upcase
				a = alpha.index(letter.downcase).to_i
				encrypted_letter = encrypted_alpha[a].upcase
				else
				a = alpha.index(letter).to_i
				encrypted_letter = encrypted_alpha[a]
				end
		end
		encrypted_message = encrypted_message.push(encrypted_letter)
	end
	return encrypted_message.join
end

puts ceaser_cipher("A string is encrypted", 10)
puts ceaser_cipher("Here is another example, another ceaser cipher", 2)
puts ceaser_cipher("Here is a long text that I have encrypted using a ceaser cipher. Ceaser Ciphers are very old, but I dont think they really are that good at hiding the message. The longer your message, the easier it is to break the code.", 28)



