# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application.rb'


# Your Code begins from this line onwards #

# array = []
# song.all.each do |x|
#   array << x.id
# end
#
# counter = 1
case ARGV[0]

when "--add"
  Song.add(ARGV[1], ARGV[2], ARGV[3])

when "--list"
  Song.list

when "--remove"
  Song.remove(ARGV[1].to_i)

when "--update"
  Song.update(ARGV[1].to_i, ARGV[2], ARGV[3], ARGV[4]) 

end
