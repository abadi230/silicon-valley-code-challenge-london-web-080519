class Startup
    @@all = []
    attr_accessor :name
    attr_reader :founder, :domain

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end

    def pivot(domain, name)
        @domain = domain
        @name = name
    end

    def self.find_by_founder(name)
        self.all.find{|startup| startup.founder == name}
    end

    def self.domains
        self.all.map{|startup| startup.domain}.uniq
    end

    def funding_rounds
        FundingRound.all.select{|fund| fund.startup == self}
    end

    def sign_contract(venture_capitalist, investment_type,amount)
        FundingRound.new(self,venture_capitalist,investment_type,amount)
    end

    def num_funding_rounds
        funding_rounds.length
    end

    def total_funds
        funding_rounds.sum{|fund| fund.investment}
    end

    def investors
        funding_rounds.map{|fund| fund.venture_capitalist}.uniq
    end

    def big_investors
        # all venture capitalists invested in this instance
        # choose veture capitalists matshes ventrue in tres club
        investors.select{|investor| VentureCapitalist.tres_commas_club.include?(investor)}
    end

    
    
end
