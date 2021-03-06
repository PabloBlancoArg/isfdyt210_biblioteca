class UsersController < ApplicationController
	before_action :authenticate_user!

	def index
		@users = User.where.not(role: 'admin')
		@books = Book.all
		@loans = Loan.all
	end

	def new
		@user = User.new
	end

	def show
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to root_path, notice: 'User was successfully created.'
		else
			render :new 
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		respond_to do |format|
			format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
	
	def update_with_password(params={}) 
		if params[:password].blank? 
			params.delete(:password) 
			params.delete(:password_confirmation) if params[:password_confirmation].blank? 
		end 
		update_attributes(params) 
	end

	

	def user_params
		params.require(:user).permit(:email, :name, :last_name, :role, :password, :password_confirmation)
	end
end
