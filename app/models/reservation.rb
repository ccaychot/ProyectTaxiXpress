class Reservation < ActiveRecord::Base
  belongs_to :status
  belongs_to :driver
  belongs_to :vehicle
end
