class SlotsController < ApplicationController
  respond_to :html, :json

  def index
    respond_with @slots = Slot.all
  end

  def show
    respond_with @slot = Slot.find(params[:id])
  end

  def new
    respond_with @slot = Slot.new
  end

  def create
    @slot = Slot.new(params[:slot])
    @slot.save
    respond_with @slot
  end

  def edit
    respond_with @slot = Slot.find(params[:id])
  end

  def update
    @slot = Slot.find params[:id]
    @slot.update_attributes(params[:slot])
    respond_with @slot
  end

  def destroy
    @slot = Slot.find params[:id]
    @slot.destroy
    respond_with @slot
  end
end
