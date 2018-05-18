# Finish the implementation of the Car class so it has the functionality described below
require "pry"

class Car
attr_accessor :make,:model
ALL=[]

def initialize(make,model)
  @make = make
  @model=model
  ALL << self
end

def drive
"VROOOOOOOOOOOOM!"
end

def self.all
  ALL
end

end

car = Car.new("volvo", "lightening")
car.make
#=> "volvo"
car.model
#=> "ligthening"

car.drive
# => "VROOOOOOOOOOOOM!"

Car.all
#=> [car1, car2, car3]

# BONUS:


Car.new(make: "volvo", model: "lightening")

car.make
#=> "volvo"
car.model
#=> "ligthening"





class Car
attr_accessor :make,:model
ALL=[]

def initialize(prams={})
  @make = prams[:make]
  @model=prams[:model]
  ALL << self
end

def drive
"VROOOOOOOOOOOOM!"
end

def self.all
  ALL
end

end
