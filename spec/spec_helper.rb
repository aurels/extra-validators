require 'rubygems'
require 'spec'
require 'active_model'

require File.dirname(__FILE__) + '/../lib/extra_validators.rb'
 
# Utils models =================================================================

class BaseTestModel
  include ActiveModel::Serialization
  include ActiveModel::Validations
  
  attr_accessor :attributes
  
  def initialize(attributes = {})
    @attributes = attributes
  end
  
  def read_attribute_for_validation(key)
    @attributes[key]
  end
end

class User < BaseTestModel
  validates :email, :email => true
end

class Bookmark < BaseTestModel
  validates :url, :url => true
end
