class UnitOfMeasuresController < ApplicationController
  def index
    @unit_of_measures = UnitOfMeasure.all
  end

  def show
    @unit_of_measure = UnitOfMeasure.find(params[:id])
  end

  def new
    @unit_of_measure = UnitOfMeasure.new
  end

  def create
    @unit_of_measure = UnitOfMeasure.new
    @unit_of_measure.unit_of_measure = params[:unit_of_measure]

    if @unit_of_measure.save
      redirect_to "/unit_of_measures", :notice => "Unit of measure created successfully."
    else
      render 'new'
    end
  end

  def edit
    @unit_of_measure = UnitOfMeasure.find(params[:id])
  end

  def update
    @unit_of_measure = UnitOfMeasure.find(params[:id])

    @unit_of_measure.unit_of_measure = params[:unit_of_measure]

    if @unit_of_measure.save
      redirect_to "/unit_of_measures", :notice => "Unit of measure updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @unit_of_measure = UnitOfMeasure.find(params[:id])

    @unit_of_measure.destroy

    redirect_to "/unit_of_measures", :notice => "Unit of measure deleted."
  end
end
