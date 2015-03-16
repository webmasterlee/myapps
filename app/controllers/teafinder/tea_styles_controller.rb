class Teafinder::TeaStylesController < ApplicationController
  before_action :set_tea_style, only: [:show, :edit, :update, :destroy]

  # GET /teafinder/tea_styles
  # GET /teafinder/tea_styles.json
  def index
    @tea_styles = Teafinder::TeaStyle.where(:user_id => current_user.id)
  end

  # GET /teafinder/tea_styles/1
  # GET /teafinder/tea_styles/1.json
  def show
  end

  # GET /teafinder/tea_styles/new
  def new
    @tea_style = Teafinder::TeaStyle.new
  end

  # GET /teafinder/tea_styles/1/edit
  def edit
  end

  # POST /teafinder/tea_styles
  # POST /teafinder/tea_styles.json
  def create
    @tea_style = Teafinder::TeaStyle.new(tea_style_params)

    respond_to do |format|
      if @tea_style.save
        format.html { redirect_to teafinder_tea_styles_url, notice: 'Tea style was successfully created.' }
        format.json { render :show, status: :created, location: @tea_style }
      else
        format.html { render :new }
        format.json { render json: @tea_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teafinder/tea_styles/1
  # PATCH/PUT /teafinder/tea_styles/1.json
  def update
    respond_to do |format|
      if @tea_style.update(tea_style_params)
        format.html { redirect_to teafinder_tea_styles_url, notice: 'Tea style was successfully updated.' }
        format.json { render :show, status: :ok, location: @tea_style }
      else
        format.html { render :edit }
        format.json { render json: @tea_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teafinder/tea_styles/1
  # DELETE /teafinder/tea_styles/1.json
  def destroy
    @tea_style.destroy
    respond_to do |format|
      format.html { redirect_to teafinder_tea_styles_url, notice: 'Tea style was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tea_style
      @tea_style = Teafinder::TeaStyle.find_by id: params[:id], user_id: current_user.id
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tea_style_params
      atts = params.require(:teafinder_tea_style).permit(:style)
      atts[:user_id] = current_user.id
      atts
    end
end
