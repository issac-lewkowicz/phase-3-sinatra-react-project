class DoctorsController < ApplicationController
  get "/doctors" do 
    Doctor.all.to_json
  end

  get "/doctors/:id" do 
    doctor = Doctor.find(params[:id])
    doctor.appointments.order(:date_time).to_json(json_config)
  end


  private

  def json_config
    optipns = { methods: [:formatted_time] }
    end
end