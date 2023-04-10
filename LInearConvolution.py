import numpy as np

len1=int(input("enter length of first sequence: "));
len2=int(input("enter length of second sequence: "));

print("Enter the first sequence: ")
X = [int(i) for i in input().split()]

xMatrix=np.zeros((len1+len2-1,len1+len2-1))

print("Enter the second sequence: ")
hMatrix = [int(i) for i in input().split()]

tempMatrix=np.zeros((1,len2-1))
X=np.concatenate((X,tempMatrix),axis=None)

tempMatrix=np.zeros((1,len1-1))
hMatrix=np.concatenate((hMatrix,tempMatrix),axis=None)

for i in range(0,len1+len2-1):
    xMatrix[i]=np.roll(X,i)

xMatrix=np.transpose(xMatrix)
hMatrix=np.transpose(hMatrix)

convolvedMatrix=np.matmul(xMatrix,hMatrix)
