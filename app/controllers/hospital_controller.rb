class HospitalController < ApplicationController
  def index
     @hospitals = Hospital.all
     
  
  end


  
  def detail
    
      @a_hospital = Hospital.find(params[:id])
     
  end

end
