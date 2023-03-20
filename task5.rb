month_array=[31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
puts "Введите дату в формате ДД.ММ.ГГГГ"
date=gets.chomp.split(".")
day=date.slice(0).to_i
month=date.slice(1).to_i
year=date.slice(2).to_i
number=day
leap_year=false

if year%4==0 && year%400==0 || year%100!=0
	leap_year==true	
	puts "#{year} - високосный год"		
end

if month>1 
	i=0
	while (i+1)<month do 
	number+=month_array[i]
	i+=1
	end 
	if ((leap_year && month>2) || (month==2 && day==29)) 
		number+=1 
	end			
end
print "Дата соответствует #{number} дню #{year} года"
