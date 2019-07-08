require_relative 'database'

connection_one = Database.connection
connection_two = Database.connection

if connection_one.equal?(connection_two)
  p 'Both connections are equal'
else
  p 'Connections are different'
end