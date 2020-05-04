class CakeBlogsController < ApplicationController
  before_action :set_cake_blog, only: [:show, :edit, :update, :destroy]

  # GET /cake_blogs
  # GET /cake_blogs.json
  def index
    @cake_blogs = CakeBlog.all
  end

  # GET /cake_blogs/1
  # GET /cake_blogs/1.json
  def show
  end

  # GET /cake_blogs/new
  def new
    @cake_blog = CakeBlog.new
  end

  # GET /cake_blogs/1/edit
  def edit
  end

  # POST /cake_blogs
  # POST /cake_blogs.json
  def create
    @cake_blog = CakeBlog.new(cake_blog_params)
    @cake_blog.user_id = current_user.id
  
    respond_to do |format|
      if @cake_blog.save
        format.html { redirect_to @cake_blog, notice: 'Cake blog was successfully created.' }
        format.json { render :show, status: :created, location: @cake_blog }
      else
        format.html { render :new }
        format.json { render json: @cake_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cake_blogs/1
  # PATCH/PUT /cake_blogs/1.json
  def update
    respond_to do |format|
      if @cake_blog.update(cake_blog_params)
        format.html { redirect_to @cake_blog, notice: 'Cake blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @cake_blog }
      else
        format.html { render :edit }
        format.json { render json: @cake_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cake_blogs/1
  # DELETE /cake_blogs/1.json
  def destroy
    @cake_blog.destroy
    respond_to do |format|
      format.html { redirect_to cake_blogs_url, notice: 'Cake blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cake_blog
      @cake_blog = CakeBlog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cake_blog_params
      params.require(:cake_blog).permit(:title, :body)
    end
end
