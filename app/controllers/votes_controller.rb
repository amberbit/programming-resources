class VotesController < ApplicationController
  def create
    @linking = Linking.find(params[:linking_id])

    if params[:value] == "up"
      @linking.increment!(:scores)
    elsif params[:value] == "down"
      @linking.decrement!(:scores)
    else
      flash[:error] = 'Something went wrong.'
    end

    redirect_to :back
  end
end
