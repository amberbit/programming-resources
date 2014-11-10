class VotesController < ApplicationController

  def create
    @linking = Linking.find(params[:linking_id])
    @vote = Vote.new(user: current_user, linking: @linking)
    respond_to do |format|
      if @vote.valid?
        if params[:value] == "up"
          @linking.increment!(:scores)
        else params[:value] == "down"
          @linking.decrement!(:scores)
        end
        @vote.save
        format.html { redirect_to :back, notice: "Thank you for voting." }
      else
        format.html { redirect_to :back, error: "You can vote only once." }
      end
    end
  end
end
