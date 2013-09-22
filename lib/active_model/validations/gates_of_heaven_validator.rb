require 'gates_of_heaven'

module ActiveModel
  module Validations
    class GatesOfHeavenValidator < ActiveModel::EachValidator

      def validate_each(record, attribute, value)
        error_message = GatesOfHeaven.validate(record.password)
        unless :awesome == error_message
          record.errors.add(:password, error_message)
        end
      end

    end
  end
end
