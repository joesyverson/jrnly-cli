class User < ActiveRecord::Base

  has_many :messages
  has_many :tags, through: :messages

  
end
