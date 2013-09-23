module GatesOfHeaven
  class Doorman
    def initialize(password)
      @password = password
    end

    def guard
      case
      when @password.length <= 6
        'Password too short'
      when !@password.match(/\d/)
        'Password needs numbers'
      else
        nil
      end
    end
  end
end
