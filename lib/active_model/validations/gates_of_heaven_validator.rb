require 'gates_of_heaven'

module ActiveModel
  module Validations
    class GatesOfHeavenValidator < ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        pass = GatesOfHeaven::Doorman.new(record.password)
        if pass.guard.present?
          record.errors.add(:password, pass.guard)
        end
      end
    end
  end
end
