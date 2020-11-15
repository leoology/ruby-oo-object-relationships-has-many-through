class Customer
    attr_accessor :name, :age
  
    @@all = []
  
    def initialize(name, age)
      @name = name
      @age = age
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def new_meal(waiter, tip, total)
       Meal.new(waiter, self, tip, total)
    end
    def meals
        Meal.all.select {|meal| meal.customer==self}
    end
    def waiters
        meals.map {|meal| meal.waiter}
    end 
  end 
