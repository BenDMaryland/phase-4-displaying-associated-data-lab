class UsersController < ApplicationController



def show
user = find_user
render json: user, include: :items

end





private
def find_user
User.find(params[:id])
end

def user_params
params.permit(:username, :city)
end




end
