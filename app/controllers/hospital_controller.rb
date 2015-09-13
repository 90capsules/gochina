class HospitalController < ApplicationController
  def index
    @hospitals = Hospital.all
    
  end

  def detail
    
      @a_hospital = Hospital.where(:id => params[:id].to_i).take
     
  end

end
