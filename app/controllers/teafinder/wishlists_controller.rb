class Teafinder::WishlistsController < ApplicationController
  before_action :set_teafinder_wishlist, only: [:show, :edit, :update, :destroy]

  # GET /teafinder/wishlists
  # GET /teafinder/wishlists.json
  def index
    @wishlists = Teafinder::Wishlist.where(:user_id => current_user.id)
  end

  # GET /teafinder/wishlists/1
  # GET /teafinder/wishlists/1.json
  def show
  end

  # GET /teafinder/wishlists/new
  def new
    @wishlist = Teafinder::Wishlist.new
  end

  # GET /teafinder/wishlists/1/edit
  def edit
  end

  # POST /teafinder/wishlists
  # POST /teafinder/wishlists.json
  def create
    @wishlist = Teafinder::Wishlist.new(teafinder_wishlist_params)

    respond_to do |format|
      if @wishlist.save
        format.html { redirect_to teafinder_wishlists_url, notice: 'Wishlist was successfully created.' }
        format.json { render :show, status: :created, location: @wishlist }
      else
        format.html { render :new }
        format.json { render json: @wishlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teafinder/wishlists/1
  # PATCH/PUT /teafinder/wishlists/1.json
  def update
    respond_to do |format|
      if @wishlist.update(teafinder_wishlist_params)
        format.html { redirect_to teafinder_wishlists_url, notice: 'Wishlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @wishlist }
      else
        format.html { render :edit }
        format.json { render json: @wishlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teafinder/wishlists/1
  # DELETE /teafinder/wishlists/1.json
  def destroy
    @wishlist.destroy
    respond_to do |format|
      format.html { redirect_to teafinder_wishlists_url, notice: 'Wishlist was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teafinder_wishlist
      @wishlist = Teafinder::Wishlist.find_by id: params[:id], user_id: current_user.id
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teafinder_wishlist_params
      atts = params.require(:teafinder_wishlist).permit(:name, :notes, :url)
      atts[:user_id] = current_user.id
      atts
    end
end
