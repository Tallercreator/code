class CommentpostsController < ApplicationController
  before_action :set_commentpost, only: %i[ show edit update destroy ]

  # GET /commentposts or /commentposts.json
  def index
    @commentposts = Commentpost.all
  end

  # GET /commentposts/1 or /commentposts/1.json
  def show
  end

  # GET /commentposts/new
  def new
    @commentpost = Commentpost.new
  end

  # GET /commentposts/1/edit
  def edit
  end

  # POST /commentposts or /commentposts.json
  def create
    @commentpost = Commentpost.new(commentpost_params)

    respond_to do |format|
      if @commentpost.save
        format.html { redirect_to @commentpost, notice: "Commentpost was successfully created." }
        format.json { render :show, status: :created, location: @commentpost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @commentpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commentposts/1 or /commentposts/1.json
  def update
    respond_to do |format|
      if @commentpost.update(commentpost_params)
        format.html { redirect_to @commentpost, notice: "Commentpost was successfully updated." }
        format.json { render :show, status: :ok, location: @commentpost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @commentpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commentposts/1 or /commentposts/1.json
  def destroy
    @commentpost.destroy!

    respond_to do |format|
      format.html { redirect_to commentposts_path, status: :see_other, notice: "Commentpost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commentpost
      @commentpost = Commentpost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def commentpost_params
      params.require(:commentpost).permit(:title, :description)
    end
end
def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.create(comment_params)

  redirect_to post_path(@post)

end

