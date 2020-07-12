a = [1, 9 ,2, 10, 3, 7, 4, 6]

# 1
b = a.map {|e| e + 1}
print b 
print "\n"

#2
c = a.map {|e| e.to_f}
print c
print "\n"

#3
d = a.select {|e| e >= 5}
print d
print "\n"

#4
e = a.inject(0) {|acu, e| acu + e}
print e
print "\n"

#5
f = a.count {|e| e < 5}
print f
print "\n"
