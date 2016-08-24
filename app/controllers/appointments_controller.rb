class AppointmentsController < ApplicationController
  before_action :load_customer

  # GET /appointments
  def new
    @appointment = @customer.appointments.build
  end

  # POST /appointments
  def create
    @appointment = @customer.appointments.new(appointment_params)
    if @appointment.save
      redirect_to @customer, notice: 'Appointment was successfully created.'
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
    def appointment_params
      params.require(:appointment).permit(:appointment, :location, :customer_id)
    end
end

