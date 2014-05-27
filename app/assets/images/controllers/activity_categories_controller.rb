class ActivityCategoriesController < ApplicationController
  def index
    @activity_categories = ActivityCategory.all
  end

  def show
    @activity_category = ActivityCategory.find(params[:id])
  end

  def new
    @activity_category = ActivityCategory.new
  end

  def create
    @activity_category = ActivityCategory.new
    @activity_category.activity_category = params[:activity_category]

    if @activity_category.save
      redirect_to "/activity_categories", :notice => "Activity category created successfully."
    else
      render 'new'
    end
  end

  def edit
    @activity_category = ActivityCategory.find(params[:id])
  end

  def update
    @activity_category = ActivityCategory.find(params[:id])

    @activity_category.activity_category = params[:activity_category]

    if @activity_category.save
      redirect_to "/activity_categories", :notice => "Activity category updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @activity_category = ActivityCategory.find(params[:id])

    @activity_category.destroy

    redirect_to "/activity_categories", :notice => "Activity category deleted."
  end
end
