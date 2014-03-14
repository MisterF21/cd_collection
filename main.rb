require './lib/cd_organizer.rb'
require './lib/album.rb'

def main_menu
  puts "\n"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "~ Main Menu                               ~"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts "~ Press 'a' to add a CD                   ~"
  puts "~ Press 'art' to search for an Artist     ~"
  puts "~ Press 'alb' to search for an Album      ~"
  puts "~ Press 'l' to list the entire directory  ~"
  puts "~ Press 'x' to Exit                       ~"
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

  main_choice = gets.chomp
    if main_choice == 'a'
      add_entry
    elsif main_choice == 'l'
      list_entry
    elsif main_choice == 'art'
      search_artist
    elsif main_choice == 'alb'
      search_album
    elsif main_choice == 'x'
      puts "Goodbye!"
      exit
    else
      puts "Invalid Input. Please try again!"
      system 'clear'
      main_menu
    end
end

  def add_entry
      system 'clear'
      puts "Please enter the artist name:"
      print ">"
      artist_name = gets.chomp
      puts "Please enter the album name:"
      print ">"
      album_name = gets.chomp
      system 'clear'
      CompactDisc.new(artist_name, album_name)
      puts "You have added the album '#{album_name}' by '#{artist_name}'!"
      main_menu
  end

  def list_entry
    system 'clear'
    puts "~CD Directory:                            ~"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "\n"
    CompactDisc.all.each_with_index do |obj, index|
      puts "#{(index + 1)}. Artist: #{obj.artist_name}\n\s\s\sAlbum(s): #{obj.album_name}"
    end
    main_menu
  end

  def search_artist
    system 'clear'
    puts "Which artist are you searching for?"
    search_art = gets.chomp
    found_cd = CompactDisc.search_artist(search_art)
    puts "We found #{found_cd.artist_name}!"
    puts "Here's '#{found_cd.artist_name}'s' album(s): '#{found_cd.album_name}'"
    main_menu
  end


  def search_album
    system 'clear'
    puts "Which album are you searching for?"
    search_alb = gets.chomp
    found_cd = CompactDisc.search_album(search_alb)
    puts "We found #{found_cd.album_name}!"
    puts "'#{found_cd.album_name}'s' artist is '#{found_cd.artist_name}'"
    main_menu
  end
    main_menu





main_menu
