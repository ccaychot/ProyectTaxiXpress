class Driver < ActiveRecord::Base
  belongs_to :category
  belongs_to :sex
  belongs_to :status
  
  has_many :rerservation 
  
  
end
