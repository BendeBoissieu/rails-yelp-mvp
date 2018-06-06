class RestaurantsController < ApplicationController
  def index
    @restaurants=Restaurant.all
  end
  def show
    @restaurant = Restaurant.find(params[:id])

  end

  def new
    @restaurant=Restaurant.new

  end

  def create
    @task = Task.new(restaurant_params)
    @restaurant.save
    # redirect_to prefix_path(things that you need)
    redirect_to restaurants_path
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category))
  end




  # maybe to add later
  #def destroy
  #end
end
