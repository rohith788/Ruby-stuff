require "dbi"

begin
   # connect to the MySQL server
   dbh = DBI.connect("DBI:Mysql:dbtest:localhost", "root", "pass")
   sth = dbh.prepare("SELECT * FROM first")
   sth.execute()

   sth.fetch do |row|
   printf "Sno: %s\n", row[0]
end
   sth.finish
rescue DBI::DatabaseError => e
   puts "An error occurred"
   puts "Error code:    #{e.err}"
   puts "Error message: #{e.errstr}"
ensure
   # disconnect from server
   dbh.disconnect if dbh
end