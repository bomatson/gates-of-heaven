module GatesOfHeaven
  class Doorman

    def self.guard(password)
      case
      when password.length <= 6
        raise ArgumentError, 'Password too short'
      when !password.match(/\/d/)
        raise ArgumentError, 'Password needs numbers'
      end
    end
  end
end
