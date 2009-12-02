class VideosController < ApplicationController
  
  before_filter :require_user, :except => :show
  
  def new
    @video = Video.new
  end
  
  def preview
    @video = YoutubeVideo.new(params[:video])
    @video.auto_html_prepare
  end
  
  def create
    @video = YoutubeVideo.new(params[:video])
    @video.user = current_user
    
    if @video.save
      redirect_to @video.user
    else
      render :action => :new
    end
  end
  
  def show
    @video = Video.find(params[:id])
    @video.auto_html_prepare
  end
  
end
