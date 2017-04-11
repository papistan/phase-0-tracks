# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/expelled' do
  erb :expelled
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/students/expelled' do
	puts "Expelling #{params['name']}" 
	 db.execute("DELETE FROM students WHERE name=?", params['name'])
  redirect '/'
end

post '/students/expelRandom' do
	poor_student = db.execute("SELECT name FROM students").sample
	p "You've expelled #{poor_student['name']}" 
 #  redirect '/'
end


# add static resources