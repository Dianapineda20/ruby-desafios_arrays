sales = {
  January: 15000,
  February: 22000,
  March: 12000,
  April: 17000,
  May: 81000,
  June: 13000,
  July: 21000,
  August: 41200,
  September: 25000,
  October: 21500,
  November: 91000,
  December: 21000
}

a = []
sales.values.each_slice(3) do |v|
a.push v.sum
end
q = ['Q1','Q2','Q3','Q4']

puts q.zip(a).to_h