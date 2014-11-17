class WhistleBlowerMultisController < ApplicationController
  def new
    @whistle_blower_multi = WhistleBlowerMulti.new
  end

  def create
    @whistle_blower_multi = WhistleBlowerMulti.new(params[:whistle_blower_multi])

    if params[:whistle_blower_multi][:check_box] == "1"
      @whistle_blower_multi.request = request
      if @whistle_blower_multi.deliver
        flash.now[:error] = nil
        # flash.now[:notice] = 'Thank you for your message!'
      else
        flash.now[:error] = 'Cannot send message.'
        render :new
      end
    else
      flash.now[:error] = 'Must check box to continue'
    end
  end
end
