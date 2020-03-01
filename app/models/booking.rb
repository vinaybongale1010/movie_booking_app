class Booking < ActiveRecord::Base
  belongs_to :show_id
  belongs_to :user_id
end
