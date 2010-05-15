class UrlValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    if value !~ /^(http|https):\/\/[a-z0-9]+([-.]{1}[a-z0-9]+)*.[a-z]{2,5}(:[0-9]+)?(([0-9]{1,5})?\/.*)?$/ix
      record.errors.add(attribute, options[:message])
    end
  end
end