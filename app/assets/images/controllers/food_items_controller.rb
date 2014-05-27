class FoodItemsController < ApplicationController
  def index
    @food_items = FoodItem.all
  end

  def show
    @food_item = FoodItem.find(params[:id])
  end

  def new
    @food_item = FoodItem.new
  end

  def create
    @food_item = FoodItem.new
    @food_item.food_item = params[:food_item]
    @food_item.food_category_id = params[:food_category_id]
    @food_item.unit_of_measure_id = params[:unit_of_measure_id]
    @food_item.average_expiration_days = params[:average_expiration_days]

    if @food_item.save
      redirect_to "/food_items", :notice => "Food item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @food_item = FoodItem.find(params[:id])
  end

  def update
    @food_item = FoodItem.find(params[:id])

    @food_item.food_item = params[:food_item]
    @food_item.food_category_id = params[:food_category_id]
    @food_item.unit_of_measure_id = params[:unit_of_measure_id]
    @food_item.average_expiration_days = params[:average_expiration_days]

    if @food_item.save
      redirect_to "/food_items", :notice => "Food item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @food_item = FoodItem.find(params[:id])

    @food_item.destroy

    redirect_to "/food_items", :notice => "Food item deleted."
  end
end
