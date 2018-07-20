class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def photos
    Photo.all.select do |photo|
      photo.user == self
    end
  end

end
