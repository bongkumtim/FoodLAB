class UsersController < ApplicationController
	before action :require_login, except: [:index, :show]
end
