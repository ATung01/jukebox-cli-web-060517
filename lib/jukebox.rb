require "pry"
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
puts(<<-HELPMENU)
I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
HELPMENU
end

def list(songs)
  songs.each_with_index do |el, ind|
    puts songs[ind]
    ind += 1
  end
end

def play(songs)
  puts "Please enter a song name or number"
  answer = gets.chomp
  songs.each_with_index do |el, ind|
    #binding.pry
    if answer == el || answer.to_i == ind+1
      puts songs[ind]
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  answer = ""
  while answer != "exit"
    puts "Please enter a command:"
    answer = gets.chomp
    if answer == "help"
      help
    elsif answer == "list"
      list(songs)
    elsif answer == "play"
      play(songs)
    elsif answer == "exit"
      exit_jukebox
    end
  end
end
