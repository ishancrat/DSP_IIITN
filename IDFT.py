import numpy as np

print("Enter the sequence: ",end="")
temp= list(map(complex,input().split()))
inputSeq=np.asarray(temp,dtype=complex)
inputSeq=np.transpose(inputSeq)

lengthSeq=len(inputSeq)
twiddleMat=np.zeros((lengthSeq,lengthSeq),dtype=complex)

Wlen=np.exp(-1j*2*np.pi/lengthSeq)

for i in range(lengthSeq):
    for k in range(lengthSeq):
        twiddleMat[i][k]=Wlen**(i*k)

twiddleInvert=np.linalg.inv(twiddleMat)
IDFT=np.matmul(twiddleInvert,inputSeq).round(decimals=3)
