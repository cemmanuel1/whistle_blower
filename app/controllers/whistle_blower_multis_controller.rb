class WhistleBlowerMultisController < ApplicationController
  def new
    @whistle_blower_multi = WhistleBlowerMulti.new
  end

  def create
    @whistle_blower_multi = WhistleBlowerMulti.new(params[:whistle_blower_multi])

      @whistle_blower_multi.request = request
      if !@whistle_blower_multi.deliver
        render :new
        flash.now[:error] = 'Cannot send message.'
      end
  end
end
