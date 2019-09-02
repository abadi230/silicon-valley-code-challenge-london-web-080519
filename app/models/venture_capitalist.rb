class VentureCapitalist
    @@all = []

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
        self.all.select{|ven| ven.total_worth > 1000000000}
    end

    def fundingrounds
        FundingRound.all.select{|fund| fund.venture_capitalist == self}
    end

    def offer_contract(startup, inv_type, amount)
        FundingRound.new(startup, self, inv_type, amount)
    end
    
    def portfolio
        fundingrounds.map{|fun| fun.startup}.uniq
    end

    def biggest_investment
        fundingrounds.max_by(&:investment)
    end
    
    def invested(domain) # how can i plan to solve this problem 
        # find domain
        # add investment and return the total
        # dom = startups.select{|s| s.domain == domain}  # if i use this code : I'll find all domain match in startup class belong to this instance but not the investement from fondinground 
        dom = fundingrounds.select{|f| f.startup.domain == domain}
        dom.sum(&:investment)
        # dom.reduce(0){|memo, round| memo += round.investment} # similar to : dom.sum(&:investment)
        
    end

    def startups
        fundingrounds.map(&:startup)
    end
end
