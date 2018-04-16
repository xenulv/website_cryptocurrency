class HomeController < ApplicationController
  def index
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)

    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)

    @my_coins = ["BTC", "XRP", "STEEM", "XLM", "OMG"]
  end

  def about
  end

  def lookup

    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coin_search = JSON.parse(@response)

    @crypto_symbol = params[:sym]

    if @crypto_symbol
      @crypto_symbol = @crypto_symbol.upcase
    end

    if @crypto_symbol == ''
      @crypto_symbol = 'No symbol entered.'
    end
  end

  def users

  end

end
