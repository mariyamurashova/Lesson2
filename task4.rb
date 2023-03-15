puts "Введите коэффициент а"
a=gets.chomp.to_f
puts"Введите коэффициент b"
b=gets.chomp.to_f
puts "Введите коэффициент с"
c=gets.chomp.to_f
d=b**2-4*a*c
if d<0 
 puts ("Дискриминант меньше 0, квадратное уравнение не имеет корней")
else
	x1=((-b+Math.sqrt(d))/2*a).round(2)
	x2=((-b-Math.sqrt(d))/2*a).round(2)
	puts ("Корни квадратного уравнения: #{x1} и #{x2}" )
end
