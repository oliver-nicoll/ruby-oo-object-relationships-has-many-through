class Waiter
    attr_accessor :name, :yrs_experience
    @@all = [] #this @@all(class variable) array is also in the customer class

    def initialize(name, yrs_experience)
        @name = name
        @yrs_experience = yrs_experience
        @@all << self
    end

    def self.all    #this class method is also in the class customer
        @@all
    end

    def new_meal(customer, total, tip=0) #adds a new meal instance, refers to waiter as self
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select do |meal|
            meal.waiter == self #checking for waiter
        end
    end

    def best_tipper
        best_tipped_meal = meals.max do |meal_a, meal_b|
            meal_a.tip <=> meal_b.tip
        end
        
        best_tipped_meal.customer
    end


end