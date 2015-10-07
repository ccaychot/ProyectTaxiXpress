class Vehicle < ActiveRecord::Base
  belongs_to :brand
  belongs_to :model
  belongs_to :typeofvehicle
  
  has_many :rerservation 
  
  
end
