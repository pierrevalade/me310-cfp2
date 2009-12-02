class FormatsController < ApplicationController
  
  def create
    session[:format] = params[:id]
    redirect_to :back
  end
  
end
