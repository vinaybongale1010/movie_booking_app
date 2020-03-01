class Show < ActiveRecord::Base
  belongs_to :movie_id
  belongs_to :theatre_id
end
