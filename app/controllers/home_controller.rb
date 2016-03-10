class HomeController < ApplicationController
  def index
  end

  def search
    parameters = { term: params[:term], limit: 10 }
    byebug
    render json: Yelp.client.search('Kuala Lumpur', parameters)
  end
end
