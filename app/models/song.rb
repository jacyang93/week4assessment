require_relative "../../config/application.rb"


class Song < ActiveRecord::Base
  def self.list
    puts "No".ljust(20) + "Title".ljust(20) + "Artist".ljust(20) + "Duration".ljust(20)
    puts "==".ljust(20) + "=====".ljust(20) + "======".ljust(20) + "========".ljust(20)
     Song.all.each_with_index do |x, index|
       puts "#{index + 1}".ljust(20) + "#{x.name}".ljust(20) + "#{x.artist}".ljust(20) + "#{x.duration}".ljust(20)
     end

  end

  def self.add(title, artist, duration)
    Song.create(name: title, artist: artist, duration: duration)
  end

  def self.remove(x)
    Song.all[x - 1].destroy
  end

  def self.update(index, title, artist, duration)
    if Song.all[index - 1] != nil
      song = Song.all[index - 1]
      song.update(name: title, artist: artist, duration: duration)
      else
        puts "Song number #{index} is not found. Are you sure that this is the right song number?"
      end
  end

end
