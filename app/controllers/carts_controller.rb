class CartsController < ApplicationController
  require "rubygems"
  require "braintree"

  before_action :set_cart, only: [:show, :edit, :update, :destroy]
  before_action :initialize_cart
  layout 'header'

  Braintree::Configuration.environment = :sandbox
  Braintree::Configuration.merchant_id = "w53gzpphhc8mg92k"
  Braintree::Configuration.public_key = "46pmd6brs7qr24sj"
  Braintree::Configuration.private_key = "6e3ab429207adb42299697ba23597ead"

  # GET /carts
  # GET /carts.json
  def index
    @carts = Cart.all
    set_price
    @catalog = Product.all
    @current_cart_items = @current_cart.cart_items
    @token = Braintree::ClientToken.generate
  end

  def mycart
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
    set_price
    @catalog = Product.all
    @current_cart_items = @current_cart.cart_items
  end

  # GET /carts/new
  def new
    @cart = Cart.new
  end

  # GET /carts/1/edit
  def edit
  end

  # POST /carts
  # POST /carts.json
  def create
    @cart = Cart.new(cart_params)

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    @cart.destroy
    respond_to do |format|
      format.html { redirect_to carts_url, notice: 'Cart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def set_price
    @current_cart.update_and_save
  end
  helper_method :set_price

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_params
      params.require(:cart).permit(:price, :float)
    end
end
