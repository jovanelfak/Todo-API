class Api::UsersController < ApiController
 # #4
   before_action :authenticated?
 
   	def index
   		users = User.all
   		render json: users, each_serializer: UserSerializer
 	end
 end