class User < ActiveRecord::Base
  attr_accessible :birthday, :login_id, :name, :password
end
