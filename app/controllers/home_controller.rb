class HomeController < ApplicationController
  def index
    
    
    @tvs = Tv.all
    if @tvs.empty?
    redirect_to '/home/upload'
    else
    @banner = @tvs.sample
    end
  end

  def detail
    @pro = Tv.find(params[:id])
    
  end
  
end
