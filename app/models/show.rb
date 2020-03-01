class Show < ActiveRecord::Base
  belongs_to :movie
  belongs_to :theatre
  has_many :bookings
  has_many :users, through: :bookings
end
