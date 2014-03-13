require './lib/cd_organizer.rb'

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
    new_artist = gets.chomp
    puts "Please enter the album name:"
    print ">"
    new_album = gets.chomp
    system 'clear'
    CompactDisc.new(new_artist, new_album)
    puts "You have added the album '#{new_album}' by '#{new_artist}'!"
    main_menu
end

    main_menu

