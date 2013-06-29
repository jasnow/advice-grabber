require 'thor'
require 'open-uri'
require 'json'

module Advice
  class CLI < Thor

    desc "please", "fetches random advice from the Internet"
    def please
     the_advice = JSON.parse( open('http://api.adviceslip.com/advice').string)
     puts the_advice['slip']['advice']
    end

  end
end
