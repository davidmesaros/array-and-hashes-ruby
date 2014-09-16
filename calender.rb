# days_of_the_week = [ 'Monday', 'Tuesday', 'Wednesday', 'Thusrday' 'Friday', 'Saturday', 'Sunday']

# p days_of_the_week .pop()
# p days_of_the_week.unshift 'Sunday'

# week = [[ 'Monday', 'Tuesday', 'Wednesday', 'Thusrday','Friday'], ['Saturday', 'Sunday']]

# p week.pop(1)




days_of_the_week = [ 'Monday', 'Tuesday', 'Wednesday', 'Thusrday','Friday', 'Saturday', 'Sunday']


days_of_the_week.unshift days_of_the_week.pop

days = [days_of_the_week[1..5], [days_of_the_week.last, days_of_the_week.first]]

days.pop

days.flatten!.sort!

p days


