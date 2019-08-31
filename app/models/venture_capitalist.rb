class VentureCapitalist
    @@all = []
    @@tres = []
    attr_accessor :name, :total_worth
    
    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        @@tres << self.all.select{|ven| ven.total_worth > 1000000000}
    end

    def self.tres
        @@tres
    end
    
    def fundingrounds
        FundingRound.all.select{|fund| fund.startup == self}
    end
    
    
end
