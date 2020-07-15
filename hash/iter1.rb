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

sales.each do |k,v|
  if v > 45000
    puts v
  end
end  


