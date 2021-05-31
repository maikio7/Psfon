import numpy

def euclide(A,B):
  R0 = A
  R1 = B
  U0 = 1 * (t^0)
  V0 = 0 * (t^0)
  U1 = 0 * (t^0)
  V1 = 1 * (t^0)
  c = True
  while V1.degree()<= R1.degree():
    Q = R0 // R1
    X = R0 % R1
    R0 = R1
    R1 = X
    UX = U0 - U1*Q
    VX = V0 - V1*Q
    U0 = U1
    V0 = V1
    U1 = UX
    V1 = VX
    if V1.degree() > R1.degree():
      c = False
  Y = V1 // t^(V1.degree())
  V1 = V1 // Y
  return V1

print("enter the number of terms of the sequence:")
d = int(input())
print("enter the terms of the sequence:")
IN = numpy.array([])
for i in range(0,d):
   x = int(input())
   IN = numpy.append(IN,[x])

IN = IN.astype("int")

print(IN)
d = len(IN)
R.<t> = QQ["t"]
A = t^d
B = 0*(t^0)
for i in range(d):
  B = B + (IN[i] * (t^(d-i-1)))
X = euclide(A,B)
print(X)

res = numpy.array([])
for i in range(X.degree()):
  res = numpy.append(res,-X(0))
  X = X // t^1
res = res.astype(int)
print(res)