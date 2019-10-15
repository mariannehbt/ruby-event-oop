require 'pry'
require 'time'

class Event

attr_accessor :start_date, :duration, :title, :attendees

  def initialize(event_start_date,event_duration,event_title,event_attendees)
    @start_date = Time.parse(event_start_date) #.class Time
    @duration = event_duration.to_i #.class Integer
    @title = event_title.to_s #.class String
    @attendees = event_attendees #.class Array
  end

  def postpone_24h
    @start_date = @start_date + (3600 * 24)    
  end

  def end_date
    @end_date = @start_date + (@duration * 60)
  end

  def is_past?
    current_time = Time.now
    if current_time > @start_date
      then true
      else false
    end
  end

  def is_future?
  	!is_past?
  end

  def is_soon?
  	current_time = Time.now
    if  current_time > (@start_date - (30 * 60))
      then true
      else false
    end
  end

  def to_s
    puts ">Titre : #{title}"
    puts ">Date de début : #{start_date.strftime("%Y-%m-%d %H:%M")}"
    puts ">Durée : #{duration} minutes"
    puts ">Invités : #{attendees.join(', ')}"
  end

end

# binding.pry
# puts 'end of file'