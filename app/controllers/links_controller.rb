class LinksController < ApplicationController
  before_action :set_subject, only: [:index, :new, :create]

  def index
    @links = @subject.links.paginate(page: params[:page], per_page: 10)
  end

  def new
    @link = Link.new
  end

  def create
    @links = @subject.links
    @link = Link.new(link_params)
    respond_to do |format|
      if @link.save
        @subject.links << @link
        format.html { redirect_to subject_links_path, notice: 'Link was successfully created.' }
      else
        flash[:error]='Error! Please verify your data.'
        format.html { render :new }
      end
    end
  end

  def vote
    @link = Link.find(params[:id])
    value = params[:value] == "up" ? 1 : -1
    @link.increment!(:votes, value)
    redirect_to :back
  end

  private

  def set_subject
    @subject = Subject.where(slug: params[:subject_id]).first!
  end

  def link_params
    params.require(:link).permit(:url, :title, :description )
  end
end
