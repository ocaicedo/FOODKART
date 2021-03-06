class OrdersController < ApplicationController

def index
		@orders = Order.all
	end

	def show
		@order = Order.find(params[:id])
	end

	def new
		@order = Order.new
    @products = Product.all
	end

	def edit
		 @order = Order.find(params[:id])
     @products = Product.all
	end

	def create
		@order = Order.new(order_params)
    

 		@order.save

  		redirect_to @order
	end
	
	def update
		@order = Order.find(params[:id])
      if @order.update(order_params)
      redirect_to @order
        else
        render 'edit'
      end
	end

	def destroy
		@order = Order.find(params[:id])
    	@order.destroy
 
    	redirect_to orders_path
	end
	
	private
    def order_params
      params.require(:order).permit(
      	:id, :date, :number, :total, :discount, :customer_id,
      	order_products_attributes:[:product_id]
      )
    end
end












