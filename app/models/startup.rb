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

    def tres
        FundingRound.tres_commas_club.select {|tres| tres.startup == self}
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
        venture_capitalists_in_tres_commas_club.each do |tres|
            investors.select do |investor| 
                tres.total_worth == investors.total_worth
            end
            
        end
    end
    
    def venture_capitalists_in_tres_commas_club
        # funding_rounds.map{|fun| fun.venture_capitalists_in_tres_commas_club }
        funding_rounds.select{|fund| fund.total_worth == fun.venture_capitalists_in_tres_commas_club.total_worth} 
    end
end
