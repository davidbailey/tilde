#!/usr/bin/python
import urllib

stocks = ['IVE', 'EEB', 'GS', 'BA', 'ACWI', 'IVV']
print "SYMBOL 52LOW    LOW      LAST     HIGH     52HIGH   %CHANGE"
for stock in stocks:
	f = urllib.urlopen("http://download.finance.yahoo.com/d/quotes.csv?s=" + stock + "&f=jgl1hkc6")
	data = f.read()
	f.close()
	(low52, low, last, high, high52, change) = data.split(",")
	pchange = change.split("\"")[1]
	pchange = round(float(pchange)/float(last)*100,4)
	if pchange > 0: pchange = "+" + str(pchange)
	print stock.ljust(6), low52.ljust(8), low.ljust(8), last.ljust(8), high.ljust(8), high52.ljust(8), pchange