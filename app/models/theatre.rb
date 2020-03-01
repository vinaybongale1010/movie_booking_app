class Theatre < ActiveRecord::Base
  has_many :shows
  has_many :movies, through: :shows
end
