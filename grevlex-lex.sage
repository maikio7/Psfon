import numpy

def test(i,j):
         return int((1+(-1)**i)*(2**(i+j)) + ((-1)**i)*(5**(i+j)) + ((-1)**i)*(3**(i+j)))

grevlex = numpy.array([[0,0],[0,1],[1,0],[0,2],[1,1],[2,0],[0,3],[1,2],[2,1],[3,0]])
lex = numpy.array([[0,0],[0,1],[0,2],[1,0],[1,1],[1,2],[2,0],[2,1],[2,2],[3,0],[3,1],[3,2]])
B = grevlex
A = numpy.zeros((10,10))



i=0
while i <= 9:
  j = 0
  while j<= 9:
    m = B[i][0] + B[j][0]
    n = B[i][1] + B[j][1]
    A[i][j] = test(m,n)
    j = j+1
  i = i + 1

A = A.astype("int")
M = matrix(A)

print(M)
print(kernel(M))