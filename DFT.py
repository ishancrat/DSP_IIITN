import numpy as np

print("Enter the sequence: ",end="")
inputArray=[int(i) for i in input().split()]

dim=len(inputArray)
twiddleMatrix=np.zeros((dim,dim),dtype=complex)

Wdim=np.exp(-1j*2*np.pi/dim)
for i in range(dim):
    for k in range(dim):
        twiddleMatrix[i][k]=Wdim**(i*k)


xMatrix=np.transpose(inputArray)
DFT=(np.matmul(twiddleMatrix,xMatrix)).round(decimals=3)
