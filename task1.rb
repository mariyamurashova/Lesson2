print "Как Вас зовут?"
name=gets.chomp
print "Какой у Вас рост?"
height=gets.chomp
weight=(height.to_i-110)*1.15
if weight<0
	puts "Ваш вес уже идеальный"
else
	puts "#{name}, ваш идеальный вес - #{weight.round(2)}"
end
