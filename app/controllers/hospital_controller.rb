class HospitalController < ApplicationController
  def index
    @hospitals = Hospital.all
    
  end

  def detail
    
      @a_hospital = Hospital.where(:id => params[:id].to_i).take
     
  end

  def score_evaluate
    score = HosReply.new
    score.hospital_id = params[:id].to_i
    unless current_user.nil?
    score.user_id = current_user.id
    end
    score.hos_score = params[:rating].to_i
    score.content = params[:msg]
    score.save
    
    
    # HosReply.create(hospital_id: params[:id].to_i, user_id: current_user.id, hos_score: params[:rating].to_i, content: params[:msg])
   
    redirect_to :back
  end

end
# t.integer :user_id
#       t.text :content
#       t.integer :hospital_id
#       t.integer :hos_score

