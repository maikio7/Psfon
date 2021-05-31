import numpy

def test(i,j):
         return (1+(-1)**i)*(2**(i+j)) + ((-1)**i)*(5**(i+j)) + ((-1)**i)*(3**(i+j))

def testy(i,j):
    if (i+j)%2 == 0:
       return 0
    return 1
grevlex = numpy.array([[0,0],[0,1],[1,0],[0,2],[1,1],[2,0],[0,3],[1,2],[2,1],[3,0]])
lex = umpy.array([0,0],[0,1],[0,2],[1,0],[1,1],[1,2],[2,0],[2,1],[2,2],[3,0],[3,1],[3,2])
B = grevlex
A = numpy.zeros((9,9))

i=0
while i <= 8:
  j = 0
  while j<= 8:
    m = B[i][0] + B[j][0]
    n = B[i][1] + B[j][1]
    A[i][j] = testy(m,n)
    j = j+1
  i = i + 1


print(A)