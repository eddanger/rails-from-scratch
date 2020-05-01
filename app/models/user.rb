class User < ApplicationRecord
  devise :database_authenticatable, # hashes and stores a password
         :registerable, # handles signing up users
         :recoverable, # resets the user password
         :trackable, # tracks sign in count
         :confirmable, # sends emails with confirmation instructions
         :rememberable, # manages generating and clearing a token
         :lockable, # locks an account after a specified number of failed sign-in attempts
         :validatable # provides validations of email and password
         # :timeoutable, # expires sessions
         # :omniauthable # adds OmniAuth
end
