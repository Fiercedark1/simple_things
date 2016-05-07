movies = {
    Spiderman:5,
    Deadpool:5,
    Kungpow:4
    }
puts "Enter 'add' if you want to add a movie."
puts "Enter 'display' if you want to rate a movie."
puts "Enter 'delete' if you want to delete a movie."
puts "Enter 'update' if you want to edit an entry."
choice = gets.chomp.downcase
case choice
when 'add'
    puts "what is the title of the movie you are adding?"
    title = gets.chomp
    if movies[title.to_sym] == nil
      puts "What rating do you give it?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    else
      puts "That movie is already there."
    end

when 'update'
    puts "What title would you like to update"
    title = gets.chomp
    if movies[title.to_sym] == nil
      puts "The movie is not in the hash"
    else
      puts "What rating would you like to change it to? (From 0 - 5)"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
  end

when 'display'
    movies.each {|movie,rating|
    puts "#{movie}: #{rating}"}

when 'delete'
    puts "What title are you looking to remove?"
    title = gets.chomp
    if movies[title.to_sym] == nil
        puts "The movie is not saved in your list."
    else
        puts "Deleting.... ...."
        movies.delete(title)
        puts "Deleted Successfully!"
    end
    
else
    puts "Error!"
end