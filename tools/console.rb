require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
founders = ["Bob", "Frank", "Paul", "John", "George", "Ringo"]
startups = ["meganet", "flatiron", "velonet", "twr", "google", "yahoo"]
domains = ["mega.net", "flatiron.school", "velo.net", "google.com", "yahoo.net"]
vc = ["billy", "bobby", "will", "robert", "william", "rob"]
funding = ["Angel", "Pre-Seed", "Seed", "Series A", "Series B", "Series C"]
def total_worth
 rand(10000..1000000000000).ceil(-4)
end
def investment
 rand(1000..1000000).ceil(-3)
end
startup1 = Startup.new(startups.sample, founders.sample, domains.sample )
startup2 = Startup.new(startups.sample, founders.sample, domains.sample )
startup3 = Startup.new(startups.sample, founders.sample, domains.sample )
startup4 = Startup.new(startups.sample, founders.sample, domains.sample )
startup5 = Startup.new(startups.sample, founders.sample, domains.sample )
startup6 = Startup.new(startups.sample, founders.sample, domains.sample )
startup7 = Startup.new(startups.sample, founders.sample, domains.sample )
startup8 = Startup.new(startups.sample, founders.sample, domains.sample )
startup9 = Startup.new(startups.sample, founders.sample, domains.sample )
startup10 = Startup.new(startups.sample, founders.sample, domains.sample )
vencap1 = VentureCapitalist.new(vc.sample, total_worth)
vencap2 = VentureCapitalist.new(vc.sample, 500000)
vencap3 = VentureCapitalist.new(vc.sample, 163000000)
vencap4 = VentureCapitalist.new(vc.sample, 10030000)
vencap5 = VentureCapitalist.new(vc.sample, 900000000)
vencap6 = VentureCapitalist.new(vc.sample, 120000000000)
vencap7 = VentureCapitalist.new(vc.sample, 900000000)
vencap8 = VentureCapitalist.new(vc.sample, 11000000000)
vencap9 = VentureCapitalist.new(vc.sample, 710000000)
vencap10 = VentureCapitalist.new(vc.sample, 9120000000000)

fun_round = FundingRound.new(startup1,vencap1,funding.sample, investment)
fun_round2 = FundingRound.new(startup2,vencap2,funding.sample, investment)
fun_round3= FundingRound.new(startup3,vencap3,funding.sample, investment)
fun_round4 = FundingRound.new(startup4,vencap4,funding.sample, investment)
fun_round5 = FundingRound.new(startup5,vencap5,funding.sample, investment)
fun_round6 = FundingRound.new(startup6,vencap6,funding.sample, investment)
fun_round7 = FundingRound.new(startup7,vencap7,funding.sample, investment)
fun_round8 = FundingRound.new(startup8,vencap8,funding.sample, investment)
fun_round9 = FundingRound.new(startup9,vencap9,funding.sample, investment)
fun_round10 = FundingRound.new(startup10,vencap10,funding.sample, investment)
fun_round10 = FundingRound.new(startup10,vencap1,funding.sample, investment)

startup1.sign_contract(vencap7,"Angel",1009900000600.99)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line