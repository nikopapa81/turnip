class ActivityLinesController < ApplicationController
  def index
    @activity_lines = ActivityLine.all
  end

  def home
  end

  def about
  end

  def reports
  end

  def recipes
  end

  def show
    @activity_line = ActivityLine.find(params[:id])
  end

  def new
    @activity_line = ActivityLine.new
  end

  def create
    @activity_line = ActivityLine.new
    @activity_line.food_category_id = params[:food_category_id]
    @activity_line.food_item_id = params[:food_item_id]
    @activity_line.unit_of_measure_id = params[:unit_of_measure_id]
    @activity_line.activity_id = params[:activity_id]
    @activity_line.quantity = params[:quantity]
    @activity_line.cost_of_purchase = params[:cost_of_purchase]
    @activity_line.source_of_purchase = params[:source_of_purchase]
    @activity_line.expiration_date = params[:expiration_date]
    @activity_line.notes = params[:notes]

    if @activity_line.save
      redirect_to "/activity_lines", :notice => "Activity line created successfully."
    else
      render 'new'
    end
  end

  def edit
    @activity_line = ActivityLine.find(params[:id])
  end

  def update
    @activity_line = ActivityLine.find(params[:id])

    @activity_line.food_category_id = params[:food_category_id]
    @activity_line.food_item_id = params[:food_item_id]
    @activity_line.unit_of_measure_id = params[:unit_of_measure_id]
    @activity_line.activity_id = params[:activity_id]
    @activity_line.quantity = params[:quantity]
    @activity_line.cost_of_purchase = params[:cost_of_purchase]
    @activity_line.source_of_purchase = params[:source_of_purchase]
    @activity_line.expiration_date = params[:expiration_date]
    @activity_line.notes = params[:notes]

    if @activity_line.save
      redirect_to "/activity_lines", :notice => "Activity line updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @activity_line = ActivityLine.find(params[:id])

    @activity_line.destroy

    redirect_to "/activity_lines", :notice => "Activity line deleted."
  end
end
