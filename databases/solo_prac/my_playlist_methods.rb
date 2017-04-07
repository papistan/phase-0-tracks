# MY PLAYLIST 

# require gems 
require 'sqlite3'

# create SQLite3 database to hold two tables
db = SQLite3::Database.new("playlist.db")


# create 3 tables playlist: (inputs all general info specific to media link), 
# mood: (enter mood you want liked) genre: (enter genre you want linked)
create_table_playlist = <<-SQL
  CREATE TABLE IF NOT EXISTS playlist(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    link VARCHAR(255),
    filth_level INT,
    mood_id INT,
    FOREIGN KEY (mood_id) REFERENCES mood(id),
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES genre(id)
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
# METHODS BELOW

  # MOOD METHODS
def mood_id_return(mood)
   #run mood_exit_check to see if this mood is already in mood table. If mood does not exits, 
   # it returns false and entered mood into mood table
    exists = mood_exist_check(mood)

    if exists == false
      #update mood into table
      new_mood_updator(mood)
      return @mood_id_num
    else return @mood_id_num 
    end 
end

#check if mood already exists. return false if mood is already included in mood table. 
#return true if not in mood table
def mood_exist_check(mood)
	#returns nested array with all moods and their id
  @existing_moods = db.execute("SELECT id, mood FROM mood;")
  # calls .rassoc method on existing moods array, which returns nested array if second element 
  # in nested array contains value, to see if value is returned. If nil, mood does 
  # not exist and returns false
	if @existing_moods.rassoc(mood) == nil
     	return false
  #if value is returned it will return true 
  else return true
  end 
end

# updates new moods and returns its new id number
def new_mood_updator(mood)
  #insert new mood into mood table
  db.execute("INSERT INTO mood (mood) VALUES (?)", [mood])
  # update @existing_moods to now include array with new mood + its id number
  @existing_moods = db.execute("SELECT id, mood FROM mood;")
  # create variable with only an array of the new exit mood + its id number
  current_mood_array = @existing_moods.rassoc(mood)
  #save new mood id number into variable
  @mood_id_num = current_mood_array[0]
end


# GENRE METHODS
def genre_id_return(genre)
   #run mood_exist_check to see if this genre is already in genre table. If genre does not exits, 
   # it retuns false and entered genre into genre table
    exist = genre_exist_check(genre)

    if exist == false
      new_genre_updator(genre)
      return @genre_id_num
    else return @genre_id_num 
    end 
end

#check if genre already exists. return false if mood is already included in mood table. 
#return true if not in mood table
def genre_exist_check(genre)
  #returns nested array with all genres and their id
  @existing_genres = db.execute("SELECT id, genre FROM genre;")
  # calls .rassoc method on existing moods array, which returns nested array if second element 
  # in nested array contains value, to see if value is returned. If nil, mood does 
  # not exist and returns false
  if @existing_genres.rassoc(genre) == nil
      return false
  #if value is returned it will return true 
  else return true
  end 
end

# updates new genres and returns its new id number
def new_genre_updator(genre)
  #insert new genre into genre table
  db.execute("INSERT INTO genre (genre) VALUES (?)", [genre])
  # update @existing_genre to now include array with new genre + its id number
  @existing_genres = db.execute("SELECT id, genre FROM genre;")
  # create variable with only an array of the new exit genre + its id number
  current_genre_array = @existing_genres.rassoc(genre)
  #save new mood id number into variable
  @genre_id_num = current_genre_array[0]
 end


#ITEM UPDATE METHOD - ALSO CALLS ABOVE METHODS AS NEEDED

# method to input data on a new item, includes call 
def create_item(db, name, link, filth_level, mood, genre)
  # starts process of checking for existing and updating moods / genres and saves into variables the
  # id number of each to be entered
  mood_num = mood_id_return(mood)
  genre_num = genre_id_return(genre)
  #inputs all variables to update the playlist table for new item
  db.execute("INSERT INTO playlist (name, link, filth_level, mood_id, genre_id) VALUES (?, ?)", [name, link, filth_level, mood_num, genre_num])
   
end


#RECALL METHODS


def recall(current_mood, current_genre, filth_limits)

  list = db.execute("SELECT playlist.name, playlist.link 
    FROM playlist, mood, genre 
    WHERE playlist.mood_id = mood.id 
    AND playlist.genre_id = genre.id 
    AND 
    mood.name = current_mood
    AND 
    genre.name = current_genre
    AND 
    playlist.filth_level = filth_limits;"
    )
  
  puts list  #on one line each????
end

#DRIVE CODE 

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
p "What mood are you in when you listen to this? pick #{moods} or enter new"
mood = gets.chomp

# ask the genre - referencing all genre's from before
genres = db.execute("SELECT name FROM genre;")
p "What mood are you in when you listen to this? pick #{genres} or enter new"
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

recall(current_mood, current_genre, filth_limits)


