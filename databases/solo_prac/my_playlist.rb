# MY PLAYLIST 

# require gems 
require 'sqlite3'
require_relative 'my_playlist_methods'

# create SQLite3 database to hold three tables
db = SQLite3::Database.new("playlist.db")

# create 3 tables playlist: (inputs all general info specific to media link), 
# mood: (enter mood you want liked) genre: (enter genre you want linked)
create_table_playlist = <<-SQL
  CREATE TABLE IF NOT EXISTS playlist(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    link VARCHAR(255),
    filth_level INTEGER,
    mood_id INTEGER,
    genre_id INTEGER,
    FOREIGN KEY(mood_id) REFERENCES mood(id),
    FOREIGN KEY(genre_id) REFERENCES genre(id)
  )
SQL

create_table_mood = <<-SQL
  CREATE TABLE IF NOT EXISTS mood(
    id INTEGER PRIMARY KEY,
    mood VARCHAR(255)
  )
SQL

create_table_genre = <<-SQL
  CREATE TABLE IF NOT EXISTS genre(
    id INTEGER PRIMARY KEY,
    genre VARCHAR(255)
  )
SQL

# call method on method to create tables with SQL (if they are not 
#already there - IF NOT EXISTS - clause built into method)
db.execute(create_table_playlist)
db.execute(create_table_mood)
db.execute(create_table_genre)

#instance variables to hold array of moods and genres for id number reference
@existing_moods = []
@mood_id_num = 0

@existing_genres = []
@genre_id_num = 0


#DRIVER

    #INTAKE 

# take name of item
p "Enter a name of your item"
name = gets.chomp

# take link to item
p "Enter a link your item"
link = gets.chomp

# check if item is old people or kid-friendly
p "Old folk and kid-friendly? y or n"
answer = gets.chomp
if answer == "y"
  filth_level = 2
else filth_level = 1
end

# ask for mood - referencing all mood's from before
moods = db.execute("SELECT mood FROM mood;")
p "What mood are you in when you listen to this?"
mood = gets.chomp

# ask the genre - referencing all genre's from before
genres = db.execute("SELECT name FROM genre;")
p "What genre is this?"
genre = gets.chomp

create_item(db, name, link, filth_level, mood, genre)

  #RECALL

p "What mood are you in?"
current_mood = gets.chomp

p "What genre do you want to listen to?"
current_genre = gets.chomp

p "Kids or old folks around? y / n"
filth_answer = gets.chomp
  if answer == "y"
    filth_limits = 2
  else filth_limits = 1
  end

puts recall(current_mood, current_genre, filth_limits)


