class User < ActiveRecord::Base

  has_many :journals
  has_many :notes, through: :journals
  has_many :to_dos, through: :journals

end
