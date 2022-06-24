class PatientsController < ApplicationController
  get "/patients/:id" do 

    patient = Patient.find(params[:id]).to_json

  end
end