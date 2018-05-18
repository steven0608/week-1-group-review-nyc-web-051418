# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class


class Photo
attr_accessor :user
ALL=[]

def initialize
  ALL << self
end
def make_comments(comment)
  Comment.new(comment)
end

def self.all
  ALL
end
def comments
  Comment.all
end

end

class User

attr_accessor :name
ALL
def initialize(name)
  @name = name
  ALL << self
end

def photos
Photo.all
end

def self.all
  ALL
end

end


class Comment

attr_accessor :comment
ALL=[]

def initialize(comment)
  @comment = comment
  ALL << self
end

def self.all
  ALL
end



end

photo = Photo.new
user = User.new("Sophie")
photo.user = user
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]


photo.comments
# => []

photo.make_comments("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]
