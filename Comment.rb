class Comment
  attr_accessor :user, :photo, :comment
  
  @@all = []

  def initialize(user, photo, comment)
    @user = user
    @photo = photo
    @comment = comment
    @@all << self
  end

  def self.all
    @@all
  end
end
