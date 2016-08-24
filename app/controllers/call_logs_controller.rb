class CallLogsController < ApplicationController
  before_action :load_customer

  # GET /call_logs/new
  def new
    @call_log = @customer.call_logs.build
  end

  # POST /call_logs
  def create
    @call_log = @customer.call_logs.new(call_log_params)
      if @call_log.save
        redirect_to @customer, notice: 'Call log was successfully created.'
      else
        render :new
      end
  end

  protected
  def load_customer
    @customer = Customer.find(params[:customer_id])
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def call_log_params
      params.require(:call_log).permit(:calldate, :caller, :comments, :customer_id)
    end
end
