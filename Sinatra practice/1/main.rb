require "sinatra"
require "bootstrap"
require "dbi"

def verify(mail)
	if (mail)
		return true
	else
		mess = "Email not valid"
	end
	puts "check"
end


get "/" do
	erb :index
end

post "/output" do
	@user = params["user"]
	"<h1> #{@user} </h1>"
end

get "/reg" do
	erb :reg
end

post "/reg" do
	@email = params["email"]
	@user = params["user"]
	@pass = params["pass"]
	@cnfrm = params["cnfrm"]
	if(@email  =~  /\A[\w]+[\w\.\-]+@[a-z\d]+(\.[a-z]+)*\.[a-z]+/i)
		if (@pass == @cnfrm )
			begin
			   # connect to the MySQL server
				dbh = DBI.connect("DBI:Mysql:userinfo:localhost", "root", "pass")
				dbh.do( "INSERT INTO useri(usrname, pass) VALUES ('#{@user}', '#{@pass}')" )
				dbh.commit
				@regstatus = "Registered"
				erb :index
			rescue DBI::DatabaseError => e
				puts "An error occurred"
				puts "Error code:    #{e.err}"
				puts "Error message: #{e.errstr}"
			end
		else
			err = "Passwords don't match"
			erb :reg
		end
	else		
		@mess = "Invalid email"
		erb :reg
	end
end

