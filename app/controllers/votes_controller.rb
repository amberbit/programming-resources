class VotesController < ApplicationController
  respond_to :html, :js

  def create
    @linking = Linking.find(params[:linking_id])

    if params[:value] == "up"
      @vote = Vote.create(user_id: @current_user, linking_id: @linking)
      @linking.increment!(:scores)
    elsif params[:value] == "down"
      @vote = Vote.create(user_id: @current_user, linking_id: @linking)
      @linking.decrement!(:scores)
    else
      flash[:error] = 'Something went wrong.'
    end

    redirect_to :back
  end
end
