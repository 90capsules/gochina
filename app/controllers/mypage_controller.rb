class MypageController < ApplicationController
  
  
  
  
  
  def trace
  end

  def account
  end

  def codi_account
  end

  def save_box
  end

  def saving_box
  end
  
  def estimating_box
    
    @all_counsel = Counsel.all
  end
  
  def estimating_box_detail
    @each_counsel = Counsel.where(:id => params[:id]).take
  end
end
