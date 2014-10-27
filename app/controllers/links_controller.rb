class LinksController < ApplicationController

  def index
    @links = Link.all
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    respond_to do |format|
      if @link.save
        format.html { redirect_to links_path, notice: 'Link was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    respond_to do |format|
      format.html { redirect_to links_path, notice: 'Link was successfully destroyed.' }
    end
  end

  private

    def link_params
      params.require(:link).permit(:url, :title, :description, :subject_id)
    end
end
