class CustomersController < ApplicationController


  # GET /customers
  def index
    @customers = Customer.all
  end

  # GET /customers/1
  def show
    @customer = Customer.find(params[:id])
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
    @customer = Customer.find(params[:id])
  end

  # POST /customers
  def create
    @customer = Customer.new(customer_params)

      if @customer.save
        redirect_to @customer, notice: "#{@customer.name} was successfully created."
      else
        render :new
      end
  end

  # PATCH/PUT /customers/1
  def update
    @customer = Customer.find(params[:id])
      if @customer.update_attributes(customer_params)
       redirect_to @customer, notice: 'Contact was successfully updated.'
      else
        render :edit
      end
  end

  # DELETE /customers/1
  def destroy
    @customer.find(params[:id])
    @customer.destroy
    redirect_to customers_path, notice: 'Contact was successfully deleted.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:name, :home_phone, :cell_phone, :lead)
    end

end
