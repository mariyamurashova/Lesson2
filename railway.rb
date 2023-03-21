class Station

  attr_reader :station_name
  def initialize (station_name)
    @station_name=station_name
    @trains=[]
    @num_of_trains=0
  end
  
  def come_in_trains (train)
    @num_of_trains+=1
    @trains<<train
  end
  
  def show_train_list
    freight_tr=0
    pass_tr=0
    puts "Сейчас на станции находятся следующие поезда:"
    @trains.each  do |i|  puts "Поезд #{i.number} - #{i.type}"
      if i.type.include?("груз") 
        freight_tr+=1
      else pass_tr+=1
      end
    end
    puts "Всего: #{@num_of_trains} поезда"
    puts "Из них #{freight_tr} - грузовых и #{pass_tr}- пассажирских"
  end


  
  def come_out_trains (train)
    @num_of_trains-=1
    @trains.delete(train)
  end
  end

class Rout
attr_accessor :rout_list
attr_reader :rout_name
  def initialize ( first_station, last_station)
    @first_station=first_station
    @last_station=last_station
    @rout_list=[@first_station, @last_station]
    num_of_stations=1
  end

  def add_station (station)
    @rout_list.insert(-2, station)
  end

  def delete_station (station)
    @rout_list.delete(station)
    @rout_list.compact
  end

  def show_rout
    puts "Маршрут:" 
    @rout_list.each {|i| puts i.station_name}
  end

end
  
  class Train

    attr_accessor :speed, :num_car
    attr_reader :number, :type

    def initialize (speed=0,number, type, num_car)
      @number=number
      @type=type
      @num_car=num_car
      @speed=speed
      @rout_position=0
      @new_rout=[" "]
    end

    def stop_train
      self.speed=0
    end

    def increas_speed 
        self.speed+=50
     end   

    def add_car_train
      if self.speed==0 
        self.num_car+=1
      else ("Невозможно добавить вагон - поезд движется")
      end
    end
   
   def increase_car_train
    if self.speed==0 
      self.num_car-=1
      else ("Невозможно отцепить вагон - поезд движется")
    end
  end

  def train_way (rout)
    rout.rout_list[0].come_in_trains(self)
    @new_rout=rout.rout_list 
  end

  def moving_forward 
    @new_rout[@rout_position].come_out_trains(self)
    @rout_position+=1
    if @rout_position<=(@new_rout.length-1)
    @new_rout[@rout_position].come_in_trains(self)
    else puts "Маршрут окончен"
    end
  end

  def moving_back 
    @new_rout[@rout_position].come_out_trains(self)
    @rout_position-=1
    if @rout_position>=0
    rout.rout_list[@rout_position].come_in_trains(self)
    else puts "Маршрут окончен"
    end
  end

  def current_station 
    if @rout_position==0  
      puts "Поезд находится на 1-ой станции маршрута"
    else   
    puts "Поезд находится на станции: #{@new_rout[@rout_position].station_name}"
    puts "Предыдущая станция: #{@new_rout[@rout_position-1].station_name}"
    end

    if @rout_position==@new_rout.length-1
      puts "Это последняя станция маршрута"
    else
    puts "Следующая станция: #{@new_rout[@rout_position+1].station_name}"
    end
  end
end
