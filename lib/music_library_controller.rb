class MusicLibraryController
  
  def initialize(path ="./db/mp3s")
    importer = Music_Importer.new(path)
    importer.importer
  end
  
  def call 
    input = " "
    while input != "exit"
    puts "Welcome to your personal Juke Box!"
    puts "What would you like to do next"
    input = gets.strip
    case input
    when "list songs"
      songs
    when "list artists"
      artists
    when "list genres"
      genres
    when "list artist"
      list_artist
    when "list genre"
      list_genre
    when "play song"
      play_song
    end
  end
end

  
end