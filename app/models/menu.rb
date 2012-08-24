class Menu < ActiveRecord::Base
  attr_accessible :brunch, :dinner, :lunch
  mount_uploader :brunch, ImageUploader
  mount_uploader :dinner, ImageUploader
  mount_uploader :lunch, ImageUploader
end
