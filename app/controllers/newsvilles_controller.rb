class NewsvillesController < ApplicationController
  before_action :set_newsville, only: [:show, :edit, :update, :destroy]

  # GET /newsvilles
  # GET /newsvilles.json
  def index
    @newsvilles = Newsville.all
  end

  # GET /newsvilles/1
  # GET /newsvilles/1.json
  def show
  end

  # GET /newsvilles/new
  def new
    @newsville = Newsville.new
  end

  # GET /newsvilles/1/edit
  def edit
  end

  # POST /newsvilles
  # POST /newsvilles.json
  def create
    @newsville = Newsville.new(newsville_params)

    respond_to do |format|
      if @newsville.save
        format.html { redirect_to @newsville, notice: 'Newsville was successfully created.' }
        format.json { render :show, status: :created, location: @newsville }
      else
        format.html { render :new }
        format.json { render json: @newsville.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newsvilles/1
  # PATCH/PUT /newsvilles/1.json
  def update
    respond_to do |format|
      if @newsville.update(newsville_params)
        format.html { redirect_to @newsville, notice: 'Newsville was successfully updated.' }
        format.json { render :show, status: :ok, location: @newsville }
      else
        format.html { render :edit }
        format.json { render json: @newsville.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsvilles/1
  # DELETE /newsvilles/1.json
  def destroy
    @newsville.destroy
    respond_to do |format|
      format.html { redirect_to newsvilles_url, notice: 'Newsville was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsville
      @newsville = Newsville.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newsville_params
      params.require(:newsville).permit(:title_url, :title, :body, :time, :image_url)
    end
end
