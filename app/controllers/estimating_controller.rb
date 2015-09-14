class EstimatingController < ApplicationController
  def requesting
    
    current_user.profile_img
    
    
    
    req = Requesting.new
    req.priority = params[:hh]
    
    req.prefer_img = params[:hh]
    req.want_time = params[:hh]
    req.prefer_region = params[:hh]
    req.special = params[:hh]
    
    
    req.user_id = params[:hh]
    req.img_front= params[:hh]
    req.img_left= params[:hh]
    req.img_right= params[:hh]
    req.sleep_time = params[:hh]
    req.drug_sideeffect = params[:hh]
    req.switch = params[:hh]
    
  
    

  end

  def requesting_complete
  end

  def manage
  end

  def counsel
  end

  def couunsel_complete
  end

  def codi_index
  end
end
