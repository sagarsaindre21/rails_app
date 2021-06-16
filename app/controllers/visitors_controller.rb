class VisitorsController < ApplicationController
  # before_action :authenticate_user!
  def home; end

  def blogs
	@collection = Article.all
  end
end