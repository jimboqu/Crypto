class LookupController < ApplicationController
    
  def index
    require 'net/http'
    require 'json'
    @url = "https://api.coinmarketcap.com/v1/ticker/"
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @foundcoins = JSON.parse(@response)
    @look = params[:sym]
    if @look
      @look = @look.upcase
    end
  end
  
  def find
    
    
  end
  
end
