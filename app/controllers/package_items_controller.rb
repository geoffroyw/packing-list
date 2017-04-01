class PackageItemsController < ApplicationController
  before_action :set_package_item, only: [:show, :edit, :update, :destroy]
  before_action :set_package

  # GET /package_items
  # GET /package_items.json
  def index
    @package_items = PackageItem.all
  end

  # GET /package_items/1
  # GET /package_items/1.json
  def show
  end

  # GET /package_items/new
  def new
    @package_item = PackageItem.new
    @package_item.package = @package
  end

  # GET /package_items/1/edit
  def edit
  end

  # POST /package_items
  # POST /package_items.json
  def create
    @package_item = PackageItem.new(package_item_params)
    @package_item.package = @package

    respond_to do |format|
      if @package_item.save
        format.html { redirect_to package_items_path(@package), notice: 'Package item was successfully created.' }
        format.json { render :show, status: :created, location: @package_item }
      else
        format.html { render :new }
        format.json { render json: @package_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /package_items/1
  # PATCH/PUT /package_items/1.json
  def update
    respond_to do |format|
      @package_item.package = @package
      if @package_item.update(package_item_params)
        format.html { redirect_to package_items_path(@package), notice: 'Package item was successfully updated.' }
        format.json { render :show, status: :ok, location: @package_item }
      else
        format.html { render :edit }
        format.json { render json: @package_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /package_items/1
  # DELETE /package_items/1.json
  def destroy
    @package_item.destroy
    respond_to do |format|
      format.html { redirect_to package_items_url, notice: 'Package item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_package_item
    @package_item = PackageItem.find(params[:id])
  end

  def set_package
    @package = Package.find params[:package_id]
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def package_item_params
    params.require(:package_item).permit(:quantity, :item_id)
  end
end
