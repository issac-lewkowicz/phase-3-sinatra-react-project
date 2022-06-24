class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments
  
  def formatted_time
    time.strftime("%A, %m/%d/%y %l:%M %p")
  end
end