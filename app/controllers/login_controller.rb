# encoding: UTF-8

class LoginController < ApplicationController
  def welcome
  end

	def login
		a = User.where(:login_id => params[:login_id]).where(:password => params[:password]).exists?

		if a == true then
			res = {
				"res" => "OK",
				"user" => a
			}

		else
			res = {
				"res" => "NG",
				"msg" => "wrong id or password日本語"
			}
		end

		render :json => res;


	end
end
