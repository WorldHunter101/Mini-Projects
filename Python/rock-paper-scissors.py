#import libraries
import random

#Rock, Paper Scissors in Python
user = input('Type r, s, or p: ')

#rock, paper or scissor for user and computer
usepaper=False
userock=False
usesci=False
comppaper=False
compsci=False
comprock = False

#determine user choice
if user == 'p':
	usepaper = True
	print('User chose paper')
elif user == 's':
	usesci = True
	print('User chose scissors')
else:
	userock = True
	print('User chose rock')
	
#determine computer choice
comp = random.randint(1,3)
if comp == 1:
	comppaper = True
	print('Computer Chose Paper')
elif comp == 2:
	compsci = True
	print('Computer Chose Scissors')
else:
	comprock = True
	print('Computer Chose Rock')	
#score
if compsci == True and usesci == True:
	print('Tie!')
elif comprock == True and userock == True:
	print('Tie!')
elif comppaper == True and usepaper == True:
	print('Tie!')
elif comprock == True and usesci == True:
	print('Computer')
elif comppaper == True and userock == True:
	print('Computer')
elif compsci == True and userock == True:
	print('User')
elif compaper == True and usesc == True:
	print('User')
elif comprock == True and usepaper == True:
	print('User')
elif compsci == True and usepaper == True:
	print('Computer')
else:
	pass