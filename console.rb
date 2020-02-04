require_relative './lib/artist.rb'
require_relative './lib/appointment.rb'
require_relative './lib/doctor.rb'
require_relative './lib/genre.rb'
require_relative './lib/patient.rb'
require_relative './lib/song.rb'
require "pry"

a1 = Artist.new("alex")
a2 = Artist.new("Leandro")
a3 = Artist.new("jadir")
g1 = Genre.new("rock")
g2 = Genre.new("new rock")

s1 = Song.new("newsong", a1, g1)
s2 = Song.new("newsong", a1, g2)
s3 = Song.new("newsong", a2, g1)

binding.pry