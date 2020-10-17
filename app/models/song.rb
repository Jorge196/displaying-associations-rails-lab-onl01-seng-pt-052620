class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artists.name
  end

  def artist_and_title
    artist_name + " - " + self.title
  end 
end
