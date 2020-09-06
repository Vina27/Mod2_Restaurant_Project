class User < ApplicationRecord
   
    has_many :reviews
    has_many :restaurants, through: :reviews 

    # has_secure_password 
    #removing has_secure_password resolved issue of creating a new user 
    
end
