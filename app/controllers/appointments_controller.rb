class AppointmentsController < ApplicationController


  
  get "/appointments/:id" do 
    appointment = Appointment.find(params[:id])
    appointment.to_json(json_config)
  end
  
  post "/appointments" do 
    patient = Patient.find_or_create_by(name: params[:patient_name])
    appointment = Appointment.create({ 
      patient_id: patient.id,
      doctor_id: params[:doctor_id],
      appointment_type: params[:appointment_type],
      date_time: params[:date_time]
    })
    appointment.to_json
  end

  patch "/appointments/:id" do
    appointment = Appointment.find(params[:id])
    appointment.update({
      patient_id: params[:patient_id],
      doctor_id: params[:doctor_id],
      appointment_type: params[:appointment_type],
      date_time: params[:date_time]
    })
    appointment.to_json
  end

  delete '/appointments/:id' do 
    appointment = Appointment.find(params[:id])
    appointment.destroy
    appointment.to_json
  end
  




  private


  # def appointment_params
  #   patient_name = params[:patient_name]
  #   patient_id = Patient.find_by(patient_name)
  #   allowed_params = %w(date_time appointment_type doctor_id patient_id)
  #   params.filter {|param,value| allowed_params.include?(param)}
  # end

  def json_config
  options = { methods: [:formatted_time], include: [:patient] }
  end

end