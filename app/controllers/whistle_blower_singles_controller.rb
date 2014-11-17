class WhistleBlowerSinglesController < ApplicationController
  def new
    @whistle_blower_single = WhistleBlowerSingle.new
  end

  def create
    @whistle_blower_single = WhistleBlowerSingle.new(params[:whistle_blower_single])
    @whistle_blower_single.request = request
    if @whistle_blower_single.deliver
      flash.now[:error] = nil
      # flash.now[:notice] = 'Thank you for your message!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
