class Photo
  attr_accessor :user, :photo

  @@all = []

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end

  def make_comment(comment)
    Comment.new(user, self, comment)
  end

  def comments
    Comment.all.select do |comment|
      comment.photo == self
    end
  end
end
