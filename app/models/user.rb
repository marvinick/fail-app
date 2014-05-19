class User < ActiveRecord::Base
  validates_presence_of :name, :email, :password_digest, presence: true

  has_secure_password validations: false
end