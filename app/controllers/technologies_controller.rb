class TechnologiesController < ApplicationController
  def index
  	@search = $client.search("software technologies", result_type: "recent").take(10).collect 
  end
end
