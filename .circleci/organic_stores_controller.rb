class OrganicStoresController < ApplicationController
  before_action :set_organic_store, only: %i[ show edit update destroy ]

  # GET /organic_stores or /organic_stores.json
  def index
    @organic_stores = OrganicStore.all
  end

  # GET /organic_stores/1 or /organic_stores/1.json
  def show
  end

  # GET /organic_stores/new
  def new
    @organic_store = OrganicStore.new
  end

  # GET /organic_stores/1/edit
  def edit
  end

  # POST /organic_stores or /organic_stores.json
  def create
    @organic_store = OrganicStore.new(organic_store_params)

    respond_to do |format|
      if @organic_store.save
        format.html { redirect_to organic_store_url(@organic_store), notice: "Organic store was successfully created." }
        format.json { render :show, status: :created, location: @organic_store }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @organic_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organic_stores/1 or /organic_stores/1.json
  def update
    respond_to do |format|
      if @organic_store.update(organic_store_params)
        format.html { redirect_to organic_store_url(@organic_store), notice: "Organic store was successfully updated." }
        format.json { render :show, status: :ok, location: @organic_store }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @organic_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organic_stores/1 or /organic_stores/1.json
  def destroy
    @organic_store.destroy

    respond_to do |format|
      format.html { redirect_to organic_stores_url, notice: "Organic store was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organic_store
      @organic_store = OrganicStore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organic_store_params
      params.require(:organic_store).permit(:ITEMNO, :ITEM, :QTY, :PRICE, :DDATE)
    end
end
