class AssetsController < ApplicationController
    
    def stickers_index
        render json: Sticker.all, status: 200
    end
end
