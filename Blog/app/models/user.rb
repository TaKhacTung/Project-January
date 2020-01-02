class User < ApplicationRecord
  validates :password, presence: true, length: { minimum:4}
  
end
