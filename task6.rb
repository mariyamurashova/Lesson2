purchases_array=[""]
purchase_hash=Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }
nested_hash=Hash.new(0)
puts "Введите Ваши Покупки "
puts "формат ввода: Название товара Количество Цена за единицу"

loop do 
purchase=gets.chomp
purchases_array<<purchase.split

break if  purchase.include?("стоп")
end
purchases_array.each {|i| puts i}
purchases_array.each do |i| 
	nested_hash[i.slice(1)]=i.slice(2)
	purchase_hash[i.slice(0)]=nested_hash

end
purchase_hash.each {|i,j| puts "#{i}=>{#{j}}"}
nested_hash.each{|i,j| puts "#{i}=>#{j}"}
