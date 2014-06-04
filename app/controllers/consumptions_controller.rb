class ConsumptionsController < ApplicationController
  def index
    @consumptions = Consumption.all
  end

  def show
    @consumption = Consumption.find(params[:id])
  end

  def new
    @consumption = Consumption.new
  end

  def create
    @consumption = Consumption.new
    @consumption.food_item_id = params[:food_item_id]
    @consumption.quantity = params[:quantity]
    @consumption.waste = params[:waste]

    if @consumption.save
      redirect_to "/consumptions", :notice => "Consumption created successfully."
    else
      render 'new'
    end
  end

  def edit
    @consumption = Consumption.find(params[:id])
  end

  def update
    @consumption = Consumption.find(params[:id])

    @consumption.food_item_id = params[:food_item_id]
    @consumption.quantity = params[:quantity]
    @consumption.waste = params[:waste]

    if @consumption.save
      redirect_to "/consumptions", :notice => "Consumption updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @consumption = Consumption.find(params[:id])

    @consumption.destroy

    redirect_to "/consumptions", :notice => "Consumption deleted."
  end
end
