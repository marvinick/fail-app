class User < ActiveRecord::Base
  validates_presence_of :name, :email, presence: true

  has_secure_password validations: false
end