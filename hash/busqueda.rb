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

n = ARGV

n.each do |e|
    month = sales.invert[e.to_i]
    if month.nil?
        print " Data not found "
    else
        print month
    end
end