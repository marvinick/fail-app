class User < ActiveRecord::Base
  validates_presence_of :name, :email, presence: true
  validates_presence_of :password, presence: true, on: :create

  has_secure_password validations: false
end