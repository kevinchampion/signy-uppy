class ReservationsController < ApplicationController
  respond_to :html, :json

  def new
    if params[:slot_id].blank?
      logger.error("A slot id was not passed in reserverations#new")
      redirect_to slots_path, :alert => "A slot id must be passed in"
    elsif @slot = Slot.where(:id => params[:slot_id]).first
      respond_with @slot
    else
      logger.error("No slot could be found for this id #{params[:slot_id]} in reservations#new")
      redirect_to slots_path, :alert => "No slot could be found for this slot id"
    end
  end

  def create
    if params[:slot_id].blank?
      logger.error("A slot id was not passed to reservations#create")
      redirect_to slots_path, :alert => "A slot id must be passed in when trying to make a reservation"
    elsif @slot = Slot.where(:id => params[:slot_id]).first
      # @slot.user = User.find_or_create_by(:email => params[:user][:email])
      # @slot.save
      @slot.update_attribute(:user_id, User.find_or_create_by_email(params[:user][:email]).id)
      # respond_with @slot
      redirect_to slots_path, :notice => "Yay!"
    else
      logger.error("No slot could be found for this id #{params[:slot_id]} in reservations#create")
      redirect_to slots_path, :alert => "No slot could be found for this slot id"
    end
  end

end
