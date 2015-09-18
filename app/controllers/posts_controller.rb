class PostsController < ApplicationController

  before_action :set_bulletin
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [ :index, :show ]
  
  def index
    
    @tags = {
       'eye' => [ ['眼睛',"눈"], [['双眼皮',"쌍꺼풀"], ['眼形矫正术',"눈매교정"], ['开眼角',"트임"], ['眼睑下垂',"눈처짐"], ['眼袋 / 娇媚',"눈밑/애교"], [' 熊猫眼',"다크써클"], ['眼底脂肪',"눈밑 지"], ['再手术',"재수술"] ] ],
      'nose'=>[ ['鼻子',"코"], [ ['隆鼻术',"융비술"], ['歪鼻矫正术',"휜코 교정술 "], ['宽鼻矫正术',"축비술"], ['鹰钩鼻矫正术',"매부리코 교정술"], ['短鼻整形术',"짧은 코"], ['鼻头整形',"코 끝 성형"], ['鼻部玻尿酸',"코 필러"], ['再手术',"재수술"] ] ],
      'breast'=>[ ['乳房',"가슴"], [['隆胸术',"유방 확대술"], ['乳房下垂',"처진 가슴"], ['乳房缩小',"가슴 축소"], ['乳头整形',"유두 성형"], ['男士整形',"여성형 가슴"],['乳房重建术',"가슴 재건"],['再手术',"재수술"] ] ],
      'fat'=>[ ['吸脂',"지방"], [ ['手臂',"팔뚝"], ['腹部',"복부"], ['背',"등"],['大腿',"허벅지"],['小腿',"종아리"],['全身',"전신"], ['再手术',"재수술"]]],
      'skin'=>[ ['吸脂',"피부"], [ ['疤痕',"흉터"], ['青春痘',"여드름"], ['毛孔',"모공"], ['痣',"점"],['黑痣',"기미"], ['皱纹',"주름"]]],
      'petit'=>[ ['微创整形',"쁘띠"], [['肉毒杆菌',"보톡스"], ['方下巴',"사각 턱"], ['提升',"리프팅"], ['玻尿酸',"필러"],['Dermotoxin',"더마톡신"] ] ]
      }
    if params[:bulletin_id]
      @posts = @bulletin.posts.all
    else
      if params[:tag]
        @posts = Post.tagged_with(params[:tag])
      else
        @posts = Post.all
      end
      #최신글 부터 나열
      @posts = Post.order(created_at: :desc)
    end
  end

  def show
  end

  def new
    @post = @bulletin.posts.new
    @tags = {
       'eye' => [ ['眼睛',"눈"], [['双眼皮',"쌍꺼풀"], ['眼形矫正术',"눈매교정"], ['开眼角',"트임"], ['眼睑下垂',"눈처짐"], ['眼袋 / 娇媚',"눈밑/애교"], [' 熊猫眼',"다크써클"], ['眼底脂肪',"눈밑 지"], ['再手术',"재수술"] ] ],
      'nose'=>[ ['鼻子',"코"], [ ['隆鼻术',"융비술"], ['歪鼻矫正术',"휜코 교정술 "], ['宽鼻矫正术',"축비술"], ['鹰钩鼻矫正术',"매부리코 교정술"], ['短鼻整形术',"짧은 코"], ['鼻头整形',"코 끝 성형"], ['鼻部玻尿酸',"코 필러"], ['再手术',"재수술"] ] ],
      'breast'=>[ ['乳房',"가슴"], [['隆胸术',"유방 확대술"], ['乳房下垂',"처진 가슴"], ['乳房缩小',"가슴 축소"], ['乳头整形',"유두 성형"], ['男士整形',"여성형 가슴"],['乳房重建术',"가슴 재건"],['再手术',"재수술"] ] ],
      'fat'=>[ ['吸脂',"지방"], [ ['手臂',"팔뚝"], ['腹部',"복부"], ['背',"등"],['大腿',"허벅지"],['小腿',"종아리"],['全身',"전신"], ['再手术',"재수술"]]],
      'skin'=>[ ['吸脂',"피부"], [ ['疤痕',"흉터"], ['青春痘',"여드름"], ['毛孔',"모공"], ['痣',"점"],['黑痣',"기미"], ['皱纹',"주름"]]],
      'petit'=>[ ['微创整形',"쁘띠"], [['肉毒杆菌',"보톡스"], ['方下巴',"사각 턱"], ['提升',"리프팅"], ['玻尿酸',"필러"],['Dermotoxin',"더마톡신"] ] ]
      }
  end

  def edit
  end

  def create
    @post = @bulletin.posts.new(post_params)
    @post.user = current_user
    @post.save
    
    respond_to do |format|
      if @post.save
        format.html { redirect_to [@post.bulletin, @post], notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to [@post.bulletin, @post], notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to bulletin_posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_bulletin
      @bulletin = Bulletin.find(params[:bulletin_id]) if params[:bulletin_id]
    end

    def set_post
      if params[:bulletin_id]
        @post = @bulletin.posts.find(params[:id])
      else
        @post = Post.find(params[:id])
      end
    end

    def post_params
      params.require(:post).permit(:title, :content, :picture, :picture_cache, :tag_list_fixed)
    end
end