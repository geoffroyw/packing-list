class ItemDocumentsController < ApplicationController
  before_action :set_item_document, only: [:show, :edit, :update, :destroy]

  before_action :set_item

  # GET /item_documents
  # GET /item_documents.json
  def index
    @item_documents = ItemDocument.all
  end

  # GET /item_documents/1
  # GET /item_documents/1.json
  def show
  end

  # GET /item_documents/new
  def new
    @item_document = ItemDocument.new
  end

  # GET /item_documents/1/edit
  def edit
  end

  # POST /item_documents
  # POST /item_documents.json
  def create
    @item_document = ItemDocument.new(item_document_params)
    @item_document.item = @item

    respond_to do |format|
      if @item_document.save
        format.html { redirect_to item_documents_path(@item), notice: 'Item document was successfully created.' }
        format.json { render :show, status: :created, location: @item_document }
      else
        format.html { render :new }
        format.json { render json: @item_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_documents/1
  # PATCH/PUT /item_documents/1.json
  def update
    respond_to do |format|
      @item_document.item = @item
      if @item_document.update(item_document_params)
        format.html { redirect_to @item_document, notice: 'Item document was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_document }
      else
        format.html { render :edit }
        format.json { render json: @item_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_documents/1
  # DELETE /item_documents/1.json
  def destroy
    @item_document.destroy
    respond_to do |format|
      format.html { redirect_to item_documents_url, notice: 'Item document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_item_document
    @item_document = ItemDocument.find(params[:id])
  end

  def set_item
    @item = Item.find(params[:item_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def item_document_params
    params.require(:item_document).permit(:name)
  end
end
