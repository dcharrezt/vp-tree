import numpy as np
import os

moods = {}

#moods['AN'] = 1
#moods['DI'] = 2
#moods['FE'] = 3
#moods['HA'] = 4
#moods['NE'] = 5
#moods['SA'] = 6
#moods['SU'] = 7

#with open('moods.dat', 'w') as w:
#	with open('names.dat', 'r') as f:
#		for i in f:
#			a = i.split('.')
#			w.write(str(moods[a[1][:2]])+'.'+str(a[2])+'\n')

with open('moods.dat', 'r') as r2:
	with open('names.dat', 'r') as r:
		for i,j in zip(r2, r):
			i = i.rstrip('\n')
			j = j.rstrip('\n')
			os.rename(j,i) 


