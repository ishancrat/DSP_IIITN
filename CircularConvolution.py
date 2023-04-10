import numpy as np

len1=int(input("enter length of first sequence: "));
len2=int(input("enter length of second sequence: "));

lenx=max(len1,len2)
lenh=min(len1,len2)
xMatrix=np.zeros((lenx,lenx),dtype=complex)

print("Enter the longer sequence: ")
X = [int(i) for i in input().split()]

print("Enter the shorter sequence: ")
hMatrix = [int(i) for i in input().split()]

diffLen=lenx-lenh
tempMatrix=np.zeros((1,diffLen))
hMatrix=np.concatenate((hMatrix,tempMatrix),axis=None)

for i in range(0,lenx):
    xMatrix[i]=np.roll(X,i)

xMatrix=np.transpose(xMatrix)
hMatrix=np.transpose(hMatrix)

convolvedMatrix=np.matmul(xMatrix,hMatrix)
