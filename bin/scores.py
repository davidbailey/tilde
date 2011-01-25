#!/usr/bin/python
import os

teams= ["usc+trojans+basketball", "usc+trojans+football", "san+francisco+49ers", "los+angeles+lakers", "san+jose+sharks", "chelsea"]
for team in teams:
	print team
	os.system('lynx -nonumbers -dump http://www.google.com/search?q=' + team + '| grep "Last game"')
	os.system('lynx -nonumbers -dump http://www.google.com/search?q=' + team + '| grep "Next game"')
