require 'thor'
require 'gates_of_heaven'

module GatesOfHeaven
  class CLI < Thor

    desc "doorman PASSWORD", "Determines if the password is worthy of heaven"
    def doorman(password)
      puts GatesOfHeaven::Doorman.guard(password)
    end
  end
end
