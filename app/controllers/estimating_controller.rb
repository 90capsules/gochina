class EstimatingController < ApplicationController
  def requesting
    @tags = {
      'eye' => ['眼睛', ['눈 질문1','눈 질문2','눈 질문3','눈 질문4','눈 질문5']],
      'nose'=>['鼻子', ['코 질문1','코 질문2','코 질문3','코 질문4','코 질문5']],
      'breast'=>['乳房', ['가슴 질문1','가슴 질문2','가슴 질문3']],
      'fat'=>['吸脂', ['지방 질문1','지방 질문2','지방 질문3','지방 질문4']],
      }
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

  def counsel
  end

  def couunsel_complete
  end

  def codi_index
  end
end
