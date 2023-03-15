print "Введите длину основания треугольника"
a=gets.chomp.to_f
print "Введите высоту треугольника"
h=gets.chomp.to_f
s=2/(a*h)
puts "Площадь треугольника = #{s.round(2)}"
