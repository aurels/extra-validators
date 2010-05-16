require 'active_model'
require 'extra_validators/email_validator'
require 'extra_validators/url_validator'

ActiveModel::Validations.__send__(:include, ExtraValidators)