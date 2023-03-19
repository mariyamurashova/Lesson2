fibonachi_array=[0, 1]
i=2

while (fibonachi_array[i-1]+fibonachi_array[i-2])<100 do

	fibonachi_array[i]=fibonachi_array[i-1]+fibonachi_array[i-2] 
	i+=1
end

puts "Массив с числами фибоначчи до 100:"
fibonachi_array.each {|i| puts i}


