# This project is to see Bitcore BTX API information.

import json
import requests

header = {'Content-Type':  'application/json; charset=utf-8'}

# Get info from first website...  http://bitcore.cc
url_api = 'http://bitcore.cc/api.php'
resp = requests.get(url_api, headers=header)

a = json.dumps(resp.json())    # dump response to a
b = json.loads(a)              # decode json format b

api_mining = b["data"]["mining"]
api_marketing = b["data"]["marketing"]
api_circulating = b["data"]["circulating"]
api_maxsupply = b["data"]["maxsupply"]
api_leftsupply = b["data"]["leftsupply"]
api_claimed = b["data"]["claimed"]
api_total = b["data"]["total"]
api_airdrop = b["data"]["airdrop"]
api_vfork = b["data"]["vfork"]

# Get info from second website...  http://whattomine.com
url_api = 'http://whattomine.com/coins.json'
resp = requests.get(url_api, headers=header)

a = json.dumps(resp.json())    # dump response to a
b = json.loads(a)              # decode json format b

api_difficulty = b["coins"]["Bitcore"]["difficulty"]
api_difficulty24 = b["coins"]["Bitcore"]["difficulty24"]
api_lastblock = b["coins"]["Bitcore"]["last_block"]

# Get info from Third website...  http:// MarketCap.com

#Define request context
header = {'Content-Type':  'application/json; charset=utf-8'}

# ID=1654 Bitcore BTX information
url_api = 'https://api.coinmarketcap.com/v2/ticker/1654/'

#print "\nTrying to connect to https://api.coinmarketcap.com/v2/ticker/1654/"

resp = requests.get(url_api, headers=header)

a = json.dumps(resp.json())    # dump response to a
b = json.loads(a)              # decode json format b

api_id = b["data"]["id"]
api_name = b["data"]["name"]
api_symbol = b["data"]["symbol"]
api_website_slug = b["data"]["website_slug"]
api_rank = b["data"]["rank"]
api_circulating_supply = b["data"]["circulating_supply"]
api_total_supply  = b["data"]["total_supply"]
api_max_supply = b["data"]["max_supply"]
api_price = b["data"]["quotes"]["USD"]["price"]
api_volume_24h = b["data"]["quotes"]["USD"]["volume_24h"]
api_cap = b["data"]["quotes"]["USD"]["market_cap"]
api_percent_change_1h = b["data"]["quotes"]["USD"]["percent_change_1h"]
api_percent_change_24h = b["data"]["quotes"]["USD"]["percent_change_24h"]
api_percent_change_7d = b["data"]["quotes"]["USD"]["percent_change_7d"]

# Here you can do the Math and action on  changes!
change_percent = ((float(api_difficulty)-api_difficulty24)/api_difficulty24)*100

print "\n"
#print "* The Bitcore.cc API interpretor by Mantronix 2018 *\n"
print "  Total Bitcore     : ", api_total,"of", api_maxsupply 
print "  1", api_symbol ,"            : " , api_price, "$"
print "  Circulating Now   : ", api_circulating
print "  Difficulty 24H    : ", api_difficulty24
print "  Left to mine!     : ", api_leftsupply
print "\n"
print "  Total Mining      : ", api_mining
print "  Air Dropped       : ", api_airdrop
print "  BTC Owner Claim   : ", api_claimed
print "  Virtual fork      : ", api_vfork
print "\n"
print "  Last Block        : ", api_lastblock, " Difficulty : %.2f" % api_difficulty
print "  Price change last :  1h",api_percent_change_1h,"%   24h",api_percent_change_24h,"%   7d",api_percent_change_7d ,"%"
print("  Difficulty Change :  %.2f" % change_percent) , "%\n"

print "\n"







