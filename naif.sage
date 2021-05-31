import numpy

print("enter the number of terms of the sequence:")
d = int(input())
print("enter the terms of the sequence:")
IN = numpy.array([])
for i in range(0,d):
   x = int(input())
   IN = numpy.append(IN,[x])

IN = IN.astype("int")

print(IN)
 
level = 1
l = len(IN)
c = True

while level<=l and c:
  i = 1
  A = Matrix([numpy.array(IN[0:level])])
  while i+level<l:
    x = vector(numpy.array(IN[i:i+level]))
    i = i + 1
    A = A.insert_row(i-1,x)
  B = vector(numpy.array(IN[level:l+1]))
  try:
    X = A.solve_right(B)
    print(X)
    c = False
  except:
    level = level + 1