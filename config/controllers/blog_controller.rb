class JekyllOnRails::BlogController < ApplicationController
  def index
    @articles = JekyllOnRails::Article.all
  end

  def show
    @article = JekyllOnRails::Article.find_by_name(params[:id])
  end
end
