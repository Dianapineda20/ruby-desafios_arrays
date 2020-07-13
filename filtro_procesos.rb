 n = ARGV[0].to_i

 data = File.open('procesos.data').read.chomp.split(',')

 def filter(data)
     a = []
     b = []
     data.each do |e|
         a.push e.to_i
     end
     a.each do |e|
         if e > n = ARGV[0].to_i
             b.push e
         end
     end
     File.write('filtered_procesos.data', b.join("\n"))
 end

 print filter(data)