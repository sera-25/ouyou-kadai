class SearchesController < ApplicationController
  before_action :authentcate_user!
  
  def search
    @content = params[:content]
    @model = params[:model]
    @method = params[:method]
  end
  
  if @model == 'user'
    @records = User.search_for(@content, @method)
  else
    @records = Book.search_for(@content, @method)
  end
end
