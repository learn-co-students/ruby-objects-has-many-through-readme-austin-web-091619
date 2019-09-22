class Waiter

    attr_reader :name, :year_experienced

    @@all = []

    def initialize (name, year_experienced)
        @name = name
        @year_experienced = year_experienced
    
        @@all << self
    end

    def new_meal (customer, total, tip = 0)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select { |meal| meal.waiter == self}
    end

    def best_tipper
        best_tip = 0
        best_tipper = nil
        meals.each do |meal|
            if meal.tip > best_tip
                best_tipper = meal.customer
                best_tip = meal.tip
            end
        end
        best_tipper
    end

    # CLASS METHODS BELOW

    def self.all
        @@all
    end

end