class AppointmentsController < ApplicationController


  
  get "/appointments/:id" do 
    doctor = Doctor.find(params[:id])
    doctor.appointments.order(:date_time).to_json(json_config)
  end
  
  # post "/appointments" do 
  #   appointment = Appointment.create(appointment_params)
  #   appointment.to_json
  # end



  private


  def appointment_params
    allowed_params = %w(date_time appointment_type doctor_id patient_id)
    params.filter {|param,value| allowed_params.include?(param)}
  end

  def json_config
  optipns = { methods: [:formatted_time] }
  end

end