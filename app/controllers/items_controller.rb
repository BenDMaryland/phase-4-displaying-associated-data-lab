class ItemsController < ApplicationController







def index
item = Item.all
render json: item, include: :user
end



    private

    
    def user_params
    params.permit(:name, :description, :price)
    end
    
    
    






end
