module ExtraValidators
  class EmailValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      if value !~ /(\A(\s*)\Z)|(\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z)/i
        record.errors.add(attribute, options[:message])
      end
    end
  end
end