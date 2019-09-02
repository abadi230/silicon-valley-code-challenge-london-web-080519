class FundingRound
    @@all = []
    
    attr_accessor :type
    attr_reader :startup, :venture_capitalist

    def initialize(startup, venture_capitalist, type, investment)
        @startup = startup
        @venture_capitalist =venture_capitalist
        @type =type
        @investment =investment

        @@all << self
    end

    def self.all
        @@all
    end
    
    def investment
        @investment < 0 ? @investment = 0 : @investment 
        @investment.to_f
    end

end
