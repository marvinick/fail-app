class User < ActiveRecord::Base
  validates_presence_of :name, :email, presence: true
  validates_presence_of :password, presence: true, on: :create

  has_secure_password validations: false

  mount_uploader :image, ImageUploader
  mount_uploader :image2, ImageUploader
  mount_uploader :image3, ImageUploader
  mount_uploader :image4, ImageUploader
  mount_uploader :image5, ImageUploader

end