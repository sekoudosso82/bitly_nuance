class BitlyBabiesController < ApplicationController

    def new 
        @bitly_baby = BitlyBaby.new 
        response.headers['Location'] = 3
        render status:201
    end 
end
