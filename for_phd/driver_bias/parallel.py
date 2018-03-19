import commands

N=2392
M=int(N/10)

print M,N
for i in range(1,11):
	if i==10:
		n=N+1
	else:
		n=i*M+1
	m = (i-1)*M
	out = commands.getstatusoutput('nohup bash driver.sh n m i > driver_${j}.out 2>&1  &')
	print out