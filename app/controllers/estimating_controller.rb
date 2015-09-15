class EstimatingController < ApplicationController
  def requesting

    unless user_signed_in?
      redirect_to '/users/sign_in'
    end
  end

  def requesting_content
    a_requesting_content = RequestingContent.new()
    params.each do |key, value|
      if key == "part" 
        a_requesting_content.content = "#{key} : #{value} \n"
      else
        a_requesting_content.content += "#{value} \n"
      end
    end
    a_requesting_content.requesting_id = Requesting.where(:user_id => current_user.id).last().id
    a_requesting_content.save()
    render :text => ""
  end

  def requesting_complete
    req = Requesting.new
    # req.prefer_img = params[:hh]
    req.want_time = params[:desire_time]
    req.prefer_region = params[:region]
    # req.special = params[:hh]
    
    req.user_id = current_user.id
    # req.img_front= params[:hh]
    # req.img_left= params[:hh]
    # req.img_right= params[:hh]
    req.sleep_time = params[:sleep_time]
    req.drug_sideeffect = params[:antibiotic].to_s + " , " + params[:painkiller].to_s
    req.switch = "on"
    req.save

    render :text => ""
  end

  def manage
  end

  def manage_waiting
  end
  
  def manage_complete
  end
  
  def counsel

    
  end

  def counsel_waiting
  end
  
  def counsel_complete
  end

  def codi_index
    redirect_to '/estimating/counsel_waiting'
  end
end
