class DoctorsController < ApplicationController
  get "/doctors" do 
    Doctor.all.to_json
  end
end