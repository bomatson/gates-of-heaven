module GatesOfHeaven
  def self.validate(password)
    case
    when password.length <= 6
      'Password too short'
    when !password.match(/\d/)
      'Password needs numbers'
    else
      nil
    end
  end
end
