class User < ActiveRecord::Base

  has_many :tags
  has_many :notes, through: :tags
  has_many :to_dos, through: :tags


end
