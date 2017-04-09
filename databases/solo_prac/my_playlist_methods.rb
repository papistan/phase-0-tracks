# MY PLAYLIST METHODS

# METHODS BELOW

  # MOOD METHODS
def mood_id_return(db, mood)
   #run mood_exit_check to see if this mood is already in mood table. If mood does not exits, 
   # it returns false and entered mood into mood table
    exists = mood_exist_check(db, mood)

    if exists == false
      #update mood into table
      new_mood_updator(db, mood)
      return @mood_id_num
    else return @mood_id_num 
    end 
end

#check if mood already exists. return false if mood is already included in mood table. 
#return true if not in mood table
def mood_exist_check(db, mood)
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
def new_mood_updator(db, mood)
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
def genre_id_return(db, genre)
   #run mood_exist_check to see if this genre is already in genre table. If genre does not exits, 
   # it retuns false and entered genre into genre table
    exist = genre_exist_check(db, genre)
    if exist == false
      new_genre_updator(db, genre)
      return @genre_id_num
    else return @genre_id_num 
    end 
end

#check if genre already exists. return false if mood is already included in mood table. 
#return true if not in mood table
def genre_exist_check(db, genre)
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
def new_genre_updator(db, genre)
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
  mood_num = mood_id_return(db, mood)
  genre_num = genre_id_return(db, genre)
  #inputs all variables to update the playlist table for new item
  db.execute("INSERT INTO playlist (db, name, link, filth_level, mood_id, genre_id) VALUES (?, ?, ?, ?, ?)", [name, link, filth_level, mood_num, genre_num])
   
end


#RECALL METHODS

def recall(current_mood, current_genre, filth_limits)

  list = db.execute("SELECT name, link 
    FROM playlist p
    INNER JOIN mood m
    ON p.mood_id = m.id 
    INNER JOIN genre g
    ON p.genre_id = g.id
    WHERE m.name = current_mood
    AND g.name = current_genre
    AND p.filth_level = filth_limits;"
    )
  
end


