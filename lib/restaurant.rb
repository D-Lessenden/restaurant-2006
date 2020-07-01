class Restaurant
attr_accessor :opening_time, :name, :dishes
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(num)
    (@opening_time.to_i + num).to_s + ':00'
  end

  def add_dish(new_dish)
    @dishes << new_dish
  end

   def open_for_lunch?
     true if @opening_time.to_i < 11
   end

    def menu_dish_names
      all_caps = []
      @dishes.each do |dish|
        all_caps << dish.upcase
      end
      all_caps
    end

    def announce_closing_time(num)
     to_12 = @opening_time.to_i + num
      if to_12 < 12
        "#{@name} will be closing at #{to_12}:00AM"
      else
        to_12 - 12
        "#{@name} will be closing at #{to_12-12}:00PM"
      end
    end
end
