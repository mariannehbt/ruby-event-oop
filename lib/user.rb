require 'pry'

class User
  
  attr_accessor :email, :age
  @@all_users = []

  def initialize(user_email,user_age)
    @email = user_email.to_s
    @age = user_age.to_i
    @@all_users << self
  end

  def self.all
    return @@all_users
  end

  def self.find_by_email(email)
    @@all_users.each do |user|
      if user.email == email
        then puts "Voici l'age du User trouvé : #{user.age}"
      end
    end
  end

end


julie = User.new("julie@julie.com", 35)
jean = User.new("jean@jean.com", 23)
claude = User.new("claude@claude.com", 75)

user_1 = User.find_by_email("claude@claude.com")

binding.pry
# puts 'end of file'