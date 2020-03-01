class Movie < ActiveRecord::Base
  has_many :shows
  has_many :theatres, through: :shows	
end
