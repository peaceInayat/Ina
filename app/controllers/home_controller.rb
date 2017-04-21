class HomeController < ApplicationController
  def index
    if params[:category].blank?
      @customers = Customer.all.order("created_at DESC")
    else
      @category_id = Category.find_by(name: params[:category]).id
      @customers = Customer.where(category_id: @category_id).order("created_at DESC")
    end
  end

  def welcome

  end

  def contact_us

  end

  def write_to_us
    @customer = Customer.new

  end

  def register_customer_query
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to home_show_query_path(@customer), notice: "Successfully submitted"
    else
      render home_write_to_us_path, notice: "failed"
    end

  end

  def show_query
    @customer = Customer.find(params[:format])
  end

  private

  def find_customer
    @customer = Customer.find(params[:id])
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def customer_params
    params.require(:customer).permit(:name, :email_id, :phone_no, :category_id, :to_get_done, :image)
  end

end
