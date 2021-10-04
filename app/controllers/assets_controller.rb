class AssetsController < ApplicationController
    
    def stickers_index
        render json: Sticker.where("init=?", true), status: 200
    end
end
