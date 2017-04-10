# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# a GET route that displays an address of a particular student
get '/contact/:address' do 
  address = params[:address]
  "Contact us at #{address} for more info."
end

# a GET route that diplays a name as a query parameter
get '/great_job' do 
  name = params[:name]
  if name 
    "Good job, #{name}!"
  else 
    "Good job!"
  end
end

# a GET route that adds two numbers and responds with results
get '/add/:num1/plus/:num2' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i + num2.to_i
  "Well, #{num1} + #{num2} = #{answer}"
end 




