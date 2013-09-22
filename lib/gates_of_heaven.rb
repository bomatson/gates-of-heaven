require "active_model/validations"
require "gates_of_heaven/version"
require "active_model/validations/gates_of_heaven_validator" if defined? ActiveModel

module GatesOfHeaven
  def self.validate(password)
    case
    when password.length <= 6
      'Password too short'
    when !password.match(/\d/)
      'Password needs numbers'
    else
      :awesome
    end
  end
end

# essay homework:

# watch https://www.destroyallsoftware.com/screencasts/catalog/how-and-why-to-avoid-nil

# and maybe https://www.destroyallsoftware.com/screencasts/catalog/exceptions-and-control-flow

# write essay and bring to class

# essay covers:
# what you saw (book report style)
# what you think, and why
# how it applies to the code in this file

