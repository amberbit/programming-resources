class LinksController < ApplicationController
  before_action :set_subject, only: [:index, :create]

  def index
    @links = Link.all
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
    @subject.links << @link
    respond_to do |format|
      if @link.save
        format.html { redirect_to subject_links_path, notice: 'Link was successfully created.' }
      else
        format.html { render :index }
      end
    end
  end

  def destroy
    @link = Link.find(params[:id])
    @link.destroy
    respond_to do |format|
      format.html { redirect_to subject_links_path, notice: 'Link was successfully destroyed.' }
    end
  end

  private
    def set_subject
      @subject = Subject.find(params[:subject_id])
    end

    def link_params
      params.require(:link).permit(:url, :title, :description )
    end
end
