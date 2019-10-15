# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'

julie = User.new("julie@email.com", 32)
jean = User.new("jean@email.com", 65)

#print User.all

require_relative 'lib/event'

my_event = Event.new("2010-10-31 12:00", 30, "RDV super important", ["truc@machin.com", "bidule@chose.fr"])

#my_event.postpone_24h

#binding.pry

# puts my_event.start_date
# puts my_event.duration
# puts my_event.title
# puts my_event.attendees
# puts my_event.end_date
# puts my_event.is_past?
# puts my_event.is_future?
# puts my_event.is_soon?
puts my_event.to_s

# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.