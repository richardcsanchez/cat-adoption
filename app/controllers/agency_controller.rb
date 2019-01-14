class AgenciesController < ApplicationController
  def new
    @agency = Agency.new
  end

  def create
    @agency = Agency.new(agency_params)
     if @agency.save
       redirect_to agency_path(@agency)
     else
       render :new
     end
  end

  def show
    @agency = Agency.find_by_id(params[:id])
  end

  private
  def agency_params
   params.require(:agency).permit(:name, :street_1, :street_2, :zip_code, :state, :email, :phone_number)
  end


end
