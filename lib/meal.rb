class Meal

    attr_reader :waiter, :customer, :total, :tip

    @@all = []

    def initialize (waiter, customer, total, tip = 0)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip

        @@all << self
    end

    # CLASS METHODS BELOW

    def self.all
        @@all
    end

end