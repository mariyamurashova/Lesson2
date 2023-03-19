alphabet="абвгдеёжзийклмнопрстуфхцчшщъыьэюя"
vowels="аеёиоуыэюя"
vowels_hash=Hash.new(0)
for i in (0..alphabet.length-1)
	
	for j in (0..vowels.length-1) 

		if alphabet.slice(i).include?(vowels.slice(j))
			vowels_hash[alphabet.slice(i)]=i+1
		end
	end

end

vowels_hash.each { |key, volue| puts "#{key}=>#{volue}"}

			
		
			
	
	



