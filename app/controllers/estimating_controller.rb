class EstimatingController < ApplicationController
  def requesting
    @tags = {
      'eye' => ['眼睛', ['눈 질문1','눈 질문2','눈 질문3','눈 질문4','눈 질문5']],
      'nose'=>['鼻子', ['코 질문1','코 질문2','코 질문3','코 질문4','코 질문5']],
      'breast'=>['乳房', ['가슴 질문1','가슴 질문2','가슴 질문3']],
      'fat'=>['吸脂', ['지방 질문1','지방 질문2','지방 질문3','지방 질문4']]
      }
    
    

    
  
    

  end

  def requesting_complete
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
