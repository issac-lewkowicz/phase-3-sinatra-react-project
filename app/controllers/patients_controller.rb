class PatientsController < ApplicationController
  get "/doctors/patients/:id" do 

    patient = Patient.find(params[:id]).to_json

  end
end