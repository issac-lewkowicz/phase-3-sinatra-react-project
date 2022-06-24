class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def formatted_time
    date_time.strftime("%A, %m/%d/%y %l:%M %p")
  end
  
end