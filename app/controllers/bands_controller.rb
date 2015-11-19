class BandsController < ApplicationController

  def show
    @band = Band.find(params[:id])

    render :show
  end

end
