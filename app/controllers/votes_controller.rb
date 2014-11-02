class VotesController < ApplicationController
  def create
    @link = Link.find(params[:id])
    @linking = Linking.find(@link)
    score = params[:score] == "up" ? 1 : -1
    @linking.increment!(:scores, score)
    redirect_to :back
  end
end
