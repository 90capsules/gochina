class EstimatingController < ApplicationController
  
  skip_before_filter  :verify_authenticity_token

  def requesting
    unless user_signed_in?
      redirect_to '/users/sign_in'
    end

    @tags = {
       'eye' => [ ['眼睛',"눈"], [['双眼皮',"눈속성"], ['眼形矫正术',"눈속성"], ['开眼角',"눈속성"], ['眼睑下垂',"눈속성"], ['眼袋 / 娇媚',"눈속성"], [' 熊猫眼',"눈속성"], ['眼底脂肪',"눈속성"], ['再手术',"눈속성"] ] ],
      'nose'=>[ ['鼻子',"코"], [ ['隆鼻术',"코속성"], ['歪鼻矫正术',"코속성"], ['宽鼻矫正术',"코속성"], ['鹰钩鼻矫正术',"코속성"], ['短鼻整形术',"코속성"], ['蒜头鼻整形术',"코속성"], ['鼻头整形',"코속성"], ['再手术',"코속성"] ] ],
      'breast'=>[ ['乳房',"가슴"], [['隆胸术',"가슴속성"], ['乳房下垂',"가슴속성"], ['乳房缩小',"가슴속성"], ['乳头整形',"가슴속성"], ['男士整形',"가슴속성"],['乳房重建术',"가슴속성"],['再手术',"가슴속성"] ] ],
      'fat'=>[ ['吸脂',"지방"], [ ['지방 질문1',"지방속성"], ['지방 질문2',"지방속성"], ['지방 질문3',"지방속성"], ['지방 질문4',"지방속성"] ] ],
      'skin'=>[ ['吸脂',"피부"], [ ['피부 1',"피부속성"], ['피부 2',"피부속성"], ['피부 3',"피부속성"], ['피부 4',"피부속성"] ] ],
      'petit'=>[ ['微创整形',"쁘띠"], [['쁘띠 1',"쁘띠 속성"], ['쁘띠 2',"쁘띠 속성"], ['쁘띠 3',"쁘띠 속성"], ['쁘띠 4',"쁘띠 속성"] ] ]
      }
   # 双眼皮 (쌍꺼풀) 眼形矫正术 (눈매교정) 开眼角 (트임)  眼睑下垂 (눈처짐) 眼袋 / 娇媚 (눈밑/애교)  熊猫眼 (다크써클)  再手术 (재수술)
   #코세움 융비술 (隆鼻术) 휜코 교정술 (歪鼻矫正术) 오똑한 콧대 성형 축비술 (宽鼻矫正术 )매부리코 교정술 (鹰钩鼻矫正术) 코 필러(鼻部玻尿酸) 코 끝 성형 (鼻头整形) 짧은 코 (短鼻整形术) 성형 복코
  # 유방 확대술 (隆胸术) 처진 가슴 (乳房下垂) 가슴 축소 (乳房缩小) 유두 성형 (乳头整形) 여성형 가슴 (男士整形) 가슴 재건(乳房重建术)
  end

  def requesting_content
    @tags = {
       'eye' => [ ['眼睛',"눈"], [['双眼皮',"눈속성"], ['眼形矫正术',"눈속성"], ['开眼角',"눈속성"], ['眼睑下垂',"눈속성"], ['眼袋 / 娇媚',"눈속성"], [' 熊猫眼',"눈속성"], ['眼底脂肪',"눈속성"], ['再手术',"눈속성"] ] ],
      'nose'=>[ ['鼻子',"코"], [ ['隆鼻术',"코속성"], ['歪鼻矫正术',"코속성"], ['宽鼻矫正术',"코속성"], ['鹰钩鼻矫正术',"코속성"], ['短鼻整形术',"코속성"], ['蒜头鼻整形术',"코속성"], ['鼻头整形',"코속성"], ['再手术',"코속성"] ] ],
      'breast'=>[ ['乳房',"가슴"], [['隆胸术',"가슴속성"], ['乳房下垂',"가슴속성"], ['乳房缩小',"가슴속성"], ['乳头整形',"가슴속성"], ['男士整形',"가슴속성"],['乳房重建术',"가슴속성"],['再手术',"가슴속성"] ] ],
      'fat'=>[ ['吸脂',"지방"], [ ['지방 질문1',"지방속성"], ['지방 질문2',"지방속성"], ['지방 질문3',"지방속성"], ['지방 질문4',"지방속성"] ] ],
      'skin'=>[ ['吸脂',"피부"], [ ['피부 1',"피부속성"], ['피부 2',"피부속성"], ['피부 3',"피부속성"], ['피부 4',"피부속성"] ] ],
      'petit'=>[ ['微创整形',"쁘띠"], [['쁘띠 1',"쁘띠 속성"], ['쁘띠 2',"쁘띠 속성"], ['쁘띠 3',"쁘띠 속성"], ['쁘띠 4',"쁘띠 속성"] ] ]
      }

      req = Requesting.new
      req.prefer_img = params[:star_img]
      req.img_front= params[:front_img]
      req.img_left= params[:left_img]
      req.img_right= params[:right_img]
      req.desire_cost = params[:desire_cost]
      req.want_time = params[:desire_time]
      req.prefer_region = params[:region]
      req.user_id = current_user.id
      req.sleep_time = params[:sleep_time]
      req.drug_sideeffect = params[:antibiotic].to_s + " , " + params[:painkiller].to_s
      req.switch = "on"
      req.save
    
    @tags.each do |key, value|
      
      if params[key].nil?
        next
      end
      a_requesting_content = RequestingContent.new()
      a_requesting_content.part = value[0][1]
      a_requesting_content.content = ""
      1.upto(value[1].length) do |i|
        part_status = params[key][i.to_s] # 부위별 상태 입력
        if part_status.nil? # 체크박스에서 체크 안 된 것들은 넘김
          next
        end
        a_requesting_content.content += part_status + "\n"
      end
      a_requesting_content.requesting_id = Requesting.where(:user_id => current_user.id).last().id
      a_requesting_content.save()
    end
  end

  def requesting_complete
  end

  def manage
  end

  def manage_waiting
  end
  
  def manage_complete
  end
  
  def counsel
    @tags = {
       'eye' => [ ['眼睛',"눈"], [['双眼皮',"눈속성"], ['眼形矫正术',"눈속성"], ['开眼角',"눈속성"], ['眼睑下垂',"눈속성"], ['眼袋 / 娇媚',"눈속성"], [' 熊猫眼',"눈속성"], ['眼底脂肪',"눈속성"], ['再手术',"눈속성"] ] ],
      'nose'=>[ ['鼻子',"코"], [ ['隆鼻术',"코속성"], ['歪鼻矫正术',"코속성"], ['宽鼻矫正术',"코속성"], ['鹰钩鼻矫正术',"코속성"], ['短鼻整形术',"코속성"], ['蒜头鼻整形术',"코속성"], ['鼻头整形',"코속성"], ['再手术',"코속성"] ] ],
      'breast'=>[ ['乳房',"가슴"], [['隆胸术',"가슴속성"], ['乳房下垂',"가슴속성"], ['乳房缩小',"가슴속성"], ['乳头整形',"가슴속성"], ['男士整形',"가슴속성"],['乳房重建术',"가슴속성"],['再手术',"가슴속성"] ] ],
      'fat'=>[ ['吸脂',"지방"], [ ['지방 질문1',"지방속성"], ['지방 질문2',"지방속성"], ['지방 질문3',"지방속성"], ['지방 질문4',"지방속성"] ] ],
      'skin'=>[ ['吸脂',"피부"], [ ['피부 1',"피부속성"], ['피부 2',"피부속성"], ['피부 3',"피부속성"], ['피부 4',"피부속성"] ] ],
      'petit'=>[ ['微创整形',"쁘띠"], [['쁘띠 1',"쁘띠 속성"], ['쁘띠 2',"쁘띠 속성"], ['쁘띠 3',"쁘띠 속성"], ['쁘띠 4',"쁘띠 속성"] ] ]
      }
    @each_requesting = Requesting.where(:id => params[:id]).take
  end
  
  def counsel_content
    
    @tags = {
       'eye' => [ ['眼睛',"눈"], [['双眼皮',"눈속성"], ['眼形矫正术',"눈속성"], ['开眼角',"눈속성"], ['眼睑下垂',"눈속성"], ['眼袋 / 娇媚',"눈속성"], [' 熊猫眼',"눈속성"], ['眼底脂肪',"눈속성"], ['再手术',"눈속성"] ] ],
      'nose'=>[ ['鼻子',"코"], [ ['隆鼻术',"코속성"], ['歪鼻矫正术',"코속성"], ['宽鼻矫正术',"코속성"], ['鹰钩鼻矫正术',"코속성"], ['短鼻整形术',"코속성"], ['蒜头鼻整形术',"코속성"], ['鼻头整形',"코속성"], ['再手术',"코속성"] ] ],
      'breast'=>[ ['乳房',"가슴"], [['隆胸术',"가슴속성"], ['乳房下垂',"가슴속성"], ['乳房缩小',"가슴속성"], ['乳头整形',"가슴속성"], ['男士整形',"가슴속성"],['乳房重建术',"가슴속성"],['再手术',"가슴속성"] ] ],
      'fat'=>[ ['吸脂',"지방"], [ ['지방 질문1',"지방속성"], ['지방 질문2',"지방속성"], ['지방 질문3',"지방속성"], ['지방 질문4',"지방속성"] ] ],
      'skin'=>[ ['吸脂',"피부"], [ ['피부 1',"피부속성"], ['피부 2',"피부속성"], ['피부 3',"피부속성"], ['피부 4',"피부속성"] ] ],
      'petit'=>[ ['微创整形',"쁘띠"], [['쁘띠 1',"쁘띠 속성"], ['쁘띠 2',"쁘띠 속성"], ['쁘띠 3',"쁘띠 속성"], ['쁘띠 4',"쁘띠 속성"] ] ]
      }
    
    coun = Counsel.new()
    coun.codi_id = current_codi.id
    coun.user_id = params[:user_id].to_i
    coun.status = "counsel_complete"
    coun.save
    
    @tags.each do |key, value|
      
      if params[key].nil?
        next
      end
      a_counsel_content = CounselContent.new()
      a_counsel_content.part = value[0][1]
      a_counsel_content.content = ""
      1.upto(value[1].length) do |i|
        part_status = params[key][i.to_s] # 부위별 상태 입력
        if part_status.nil? # 체크박스에서 체크 안 된 것들은 넘김
          next
        end
        a_counsel_content.content += part_status + "\n"
      end
      a_counsel_content.counsel_id = current_codi.counsels.last.id
      # a_counsel_content.counsel_id = Counsel.where(:codi_id => current_codi.id).last().id
      a_counsel_content.save()
    end
  end

  def counsel_waiting
    
    @all_requesting = Requesting.all
  
  end
  
  def counsel_complete

  end

  def codi_index
    redirect_to '/estimating/counsel_waiting'
  end
end
