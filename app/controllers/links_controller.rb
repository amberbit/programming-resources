class LinksController < ApplicationController
  def index
    @subject = Subject.where(slug: params[:subject_id]).first!
    @links = @subject.links.paginate(page: params[:page], per_page: 10)
  end

  def create
    @link = Link.new(link_params)
    respond_to do |format|
      if @link.save
        @subject.links << @link
        format.html { redirect_to subject_links_path, notice: 'Link was successfully created.' }
      else
        flash[:error]='Error! Please verify your data.'
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
    end

    def link_params
      params.require(:link).permit(:url, :title, :description )
    end
end
