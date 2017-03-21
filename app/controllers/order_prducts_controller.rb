class OrderPrductsController < ApplicationController
  before_action :set_order_prduct, only: [:show, :edit, :update, :destroy]

  # GET /order_prducts
  # GET /order_prducts.json
  def index
    @order_prducts = OrderPrduct.all
  end

  # GET /order_prducts/1
  # GET /order_prducts/1.json
  def show
  end

  # GET /order_prducts/new
  def new
    @order_prduct = OrderPrduct.new
  end

  # GET /order_prducts/1/edit
  def edit
  end

  # POST /order_prducts
  # POST /order_prducts.json
  def create
    @order_prduct = OrderPrduct.new(order_prduct_params)

    respond_to do |format|
      if @order_prduct.save
        format.html { redirect_to @order_prduct, notice: 'Order prduct was successfully created.' }
        format.json { render :show, status: :created, location: @order_prduct }
      else
        format.html { render :new }
        format.json { render json: @order_prduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_prducts/1
  # PATCH/PUT /order_prducts/1.json
  def update
    respond_to do |format|
      if @order_prduct.update(order_prduct_params)
        format.html { redirect_to @order_prduct, notice: 'Order prduct was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_prduct }
      else
        format.html { render :edit }
        format.json { render json: @order_prduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_prducts/1
  # DELETE /order_prducts/1.json
  def destroy
    @order_prduct.destroy
    respond_to do |format|
      format.html { redirect_to order_prducts_url, notice: 'Order prduct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_prduct
      @order_prduct = OrderPrduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_prduct_params
      params.require(:order_prduct).permit(:quantity, :notes, :product_id, :order_id)
    end
end
