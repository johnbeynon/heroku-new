# Create new applications tailored for deployment to Heroku
# 
class Heroku::Command::New < Heroku::Command::Base
  # new:rails [APP_PATH]
  #
  # Creates a new Rails app in APP_PATH and runs heroku-rails-template against
  #
  # Examples:
  #
  # $ heroku new:rails exampleapp
  #
  def rails
    unless name = shift_argument
      error("Usage: heroku new:rails [APP_PATH]")
    end
    
    system "rails new #{name} -m https://raw.github.com/johnbeynon/heroku-rails-template/master/generator.rb"
  end
end
