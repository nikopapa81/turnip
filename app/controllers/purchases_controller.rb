class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.all
  end

  def show
    @purchase = Purchase.find(params[:id])
  end

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new
    @purchase.food_item_id = params[:food_item_id]
    @purchase.quantity = params[:quantity]
    @purchase.cost = params[:cost]
    @purchase.source = params[:source]
    @purchase.expiration_date = params[:expiration_date]

    if @purchase.save
      redirect_to "/purchases", :notice => "Purchase created successfully."
    else
      render 'new'
    end
  end

  def edit
    @purchase = Purchase.find(params[:id])
  end

  def update
    @purchase = Purchase.find(params[:id])

    @purchase.food_item_id = params[:food_item_id]
    @purchase.quantity = params[:quantity]
    @purchase.cost = params[:cost]
    @purchase.source = params[:source]
    @purchase.expiration_date = params[:expiration_date]

    if @purchase.save
      redirect_to "/purchases", :notice => "Purchase updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @purchase = Purchase.find(params[:id])

    @purchase.destroy

    redirect_to "/purchases", :notice => "Purchase deleted."
  end
end
