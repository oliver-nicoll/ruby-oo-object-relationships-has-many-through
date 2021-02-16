class Meal
    attr_accessor :waiter, :customer, :total, :tip

    @@all = [] #class variable again(like in the customer and waiter class) here to collect all the instances into the array

    def initialize(waiter, customer, total, tip=0) #has waiter and customer to tie in all three together
        @waiter = waiter 
        @customer = customer
        @total = total
        @tip = tip
        @@all << self
    end

    def self.all #class method also in customer and waiter class
        @@all
    end
end