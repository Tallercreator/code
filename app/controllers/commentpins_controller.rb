class CommentpinsController < ApplicationController
  before_action :set_commentpin, only: %i[ show edit update destroy ]

  # GET /commentpins or /commentpins.json
  def index
    @commentpins = Commentpin.all
  end

  # GET /commentpins/1 or /commentpins/1.json
  def show
  end

  # GET /commentpins/new
  def new
    @commentpin = Commentpin.new
  end

  # GET /commentpins/1/edit
  def edit
  end

  # POST /commentpins or /commentpins.json
  def create
    @commentpin = Commentpin.new(commentpin_params)

    respond_to do |format|
      if @commentpin.save
        format.html { redirect_to @commentpin, notice: "Commentpin was successfully created." }
        format.json { render :show, status: :created, location: @commentpin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @commentpin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commentpins/1 or /commentpins/1.json
  def update
    respond_to do |format|
      if @commentpin.update(commentpin_params)
        format.html { redirect_to @commentpin, notice: "Commentpin was successfully updated." }
        format.json { render :show, status: :ok, location: @commentpin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @commentpin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commentpins/1 or /commentpins/1.json
  def destroy
    @commentpin.destroy!

    respond_to do |format|
      format.html { redirect_to commentpins_path, status: :see_other, notice: "Commentpin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commentpin
      @commentpin = Commentpin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def commentpin_params
      params.require(:commentpin).permit(:title, :description)
    end
end
