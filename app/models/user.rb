class User < ActiveRecord::Base
  attr_accessible :email, :name, :password
  validates  :name,  :presence => true
  validates  :email,  :presence => true,
                    :uniqueness => true
  validates  :password,  :presence => true,
                       :length  => { :maximum => 10}
  has_many :microposts
end
