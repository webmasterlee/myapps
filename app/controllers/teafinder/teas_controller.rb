class Teafinder::TeasController < ApplicationController
  before_action :set_tea, only: [:show, :edit, :update, :destroy]
  before_action :get_dropdowns, only: [:new, :edit, :create, :random]

  # GET /teafinder/teas
  # GET /teafinder/teas.json
  def index

    if params[:sortType].blank?
      @sortType = "asc"
    else
      @sortType = params[:sortType] == "asc" ? "desc" : "asc" 
    end

    @teas = Teafinder::Tea.teaSort(params, @sortType, current_user.id)

  end

  # GET /teafinder/teas/1
  # GET /teafinder/teas/1.json
  def show
  end

  # GET /teafinder/teas/new
  def new
    @tea = Teafinder::Tea.new
  end

  # GET /teafinder/teas/1/edit
  def edit
  end

  def random
    @tea = Teafinder::Tea.search(params, current_user.id)
  end

  # POST /teafinder/teas
  # POST /teafinder/teas.json
  def create
    @tea = Teafinder::Tea.new(tea_params)

    respond_to do |format|
      if @tea.save
        format.html { redirect_to teafinder_teas_url, notice: 'Tea was successfully created.' }
        format.json { render :show, status: :created, location: @tea }
      else
        format.html { render :new }
        format.json { render json: @tea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teafinder/teas/1
  # PATCH/PUT /teafinder/teas/1.json
  def update
    respond_to do |format|
      if @tea.update(tea_params)
        format.html { redirect_to teafinder_teas_url, notice: 'Tea was successfully updated.' }
        format.json { render :show, status: :ok, location: @tea }
      else
        format.html { render :edit }
        format.json { render json: @tea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teafinder/teas/1
  # DELETE /teafinder/teas/1.json
  def destroy
    @tea.destroy
    respond_to do |format|
      format.html { redirect_to teafinder_teas_url, notice: 'Tea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tea
      @tea = Teafinder::Tea.find_by id: params[:id], user_id: current_user.id
    end

    def get_dropdowns
      @tea_types = Teafinder::TeaType.where(:user_id => current_user.id)
      @tea_styles = Teafinder::TeaStyle.where(:user_id => current_user.id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tea_params
      atts = params.require(:teafinder_tea).permit(:name, :display, :tea_type_id, :tea_style_id, :url, :notes)
      atts[:user_id] = current_user.id
      atts
    end
end
