# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode



# Initial Solution
class Song
   attr_reader :title, :artist
   
   def initialize(title, artist)
	@title = title
	@artist = artist
  end
   
   def play
	puts "Now Playing: #{@title} by #{@artist}."
  end
end

class Playlist
   
   def initialize(*songs)
	@songs= songs
   end
   
   def add(*songs)
   	songs.each {|k| @songs<< k}
   end
   
   def num_of_tracks
   	@songs.length
   end

   def remove(song)
   	@songs.delete(song)
   end

   def includes?(song)
   	@songs.include?(song)
   end

   def play_all
   end

def display
      puts "Songs on the playlist: " 
     @songs.each{|k| puts "#{k.title} by #{k.artist}"}
    end  
 
end





# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection 
# I had some slight difficulties with this program. Soem of the errors that occur were with my play_all section. I wasn't sure what methods to implement
# or what the output should be. I had entered different things but it only messed up the output. I left that section blank. I had a bit of trouble
# with line 52. The program wasn't understanding what .title was. I corrected that but placing "attr_reader :title, :artist" on line 14. 
# from there the program ran as I intended for it to. I liked this challenge. It was a little difficult but I was able to figure things out 
# by looking at the driver test and going back and forth with trial and error. This excercise helped strengthen some of my ideas of classes.



