require 'thor'
require 'gates_of_heaven'

module GatesOfHeaven
  class CLI < Thor

    desc "doorman PASSWORD", "Determines if the password is worthy of heaven"
    def doorman(password)
      pass = GatesOfHeaven::Doorman.new(password)
      puts pass.guard
      if pass.guard.nil?
        puts 'Nice password, skipper'
      end
    end
  end
end
