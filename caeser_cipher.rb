def caser_cipher(message = gets.chomp, key = gets.to_i)
	crypt = ''
	ucase = ("A".."Z").to_a
	dcase = ("a".."z").to_a
	message.each_byte do |d|
		c = d.chr
		if dcase.include?(c)
			crypt = crypt + ( (c.ord + key - 97)%26 + 97 ).chr
		elsif ucase.include?(c)
			crypt = crypt + ( (c.ord + key - 65)%26 + 65 ).chr
		else 
			crypt = crypt + c
		end
	end
	puts crypt
end

caser_cipher
