class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes
<<<<<<< HEAD

  #att accesors
  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def note_content=(contents)
    contents.each do |content|
      if content != ""
        note = Note.create(content: content)
        self.notes << note
      end
    end
  end
=======
>>>>>>> e404ed9b6cc3a52badf849589478f9c041900393
end
