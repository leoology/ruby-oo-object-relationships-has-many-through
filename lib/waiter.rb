require 'pry'
class Waiter

    attr_accessor :name, :yrs_experience
  
    @@all = []
  
    def initialize(name, yrs_experience)
      @name = name
      @yrs_experience = yrs_experience
      @@all << self
    end
  
    def self.all
      @@all
    end
  def new_meal(total,customer, tip)
    Meal.new(self, total,customer,tip)
  end
  def meals
    Meal.all.select {|meal| meal.waiter==self}
end
def best_tipper
  tip= Meal.all.sort {|meal,m| m.tip <=>meal.tip}
  tip.first.customer
end 
  end 