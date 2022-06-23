class AppointmentsController < ApplicationController
  get "/appointments/:id" do 
    doctor = Doctor.find(params[:id])
    # Doctor.find(15).appointments.order(:date_time).to_json
    doctor.appointments.order(:date_time).to_json
  end
end