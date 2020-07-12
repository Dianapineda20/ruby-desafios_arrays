nombres = ['Violeta', 'Andino', 'Clemente', 'Javiera', 'Paula', 'Pía', 'Ray']

#1
b = nombres.select {|e| e.length > 5}
print b  
print "\n"

#2
c = nombres.map {|e| e.downcase}
print c
print "\n"

#3
d = nombres.select {|e| e.start_with?('P')}
print d
print "\n"

#4
e = nombres.count {|e| e.start_with?('A', 'B', 'C')}
print e
print "\n"

#5
f = nombres. map {|e| e.length}
print f
print "\n"