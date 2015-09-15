class EstimatingController < ApplicationController
  def requesting
    @tags = {
       'eye' => ['眼睛', ['双眼皮','眼形矫正术','开眼角','眼睑下垂','眼袋 / 娇媚',' 熊猫眼','眼底脂肪','再手术', ]],
      'nose'=>['鼻子', ['隆鼻术','歪鼻矫正术','宽鼻矫正术','鹰钩鼻矫正术', '短鼻整形术','蒜头鼻整形术','鼻头整形','再手术' ]],
      'breast'=>['乳房', ['隆胸术','乳房下垂','乳房缩小','乳头整形','男士整形','乳房重建术','再手术']],
      'fat'=>['吸脂', ['지방 질문1','지방 질문2','지방 질문3','지방 질문4']],
      'skin'=>['吸脂', ['피부 1','피부 2','피부 3','피부 4']],
      'petit'=>['微创整形', ['쁘띠 1','쁘띠 2','쁘띠 3','쁘띠 4']]
      }
   # 双眼皮 (쌍꺼풀) 眼形矫正术 (눈매교정) 开眼角 (트임)  眼睑下垂 (눈처짐) 眼袋 / 娇媚 (눈밑/애교)  熊猫眼 (다크써클)  再手术 (재수술)
   #코세움 융비술 (隆鼻术) 휜코 교정술 (歪鼻矫正术) 오똑한 콧대 성형 축비술 (宽鼻矫正术 )매부리코 교정술 (鹰钩鼻矫正术) 코 필러(鼻部玻尿酸) 코 끝 성형 (鼻头整形) 짧은 코 (短鼻整形术) 성형 복코
  # 유방 확대술 (隆胸术) 처진 가슴 (乳房下垂) 가슴 축소 (乳房缩小) 유두 성형 (乳头整形) 여성형 가슴 (男士整形) 가슴 재건(乳房重建术)
  
    
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
