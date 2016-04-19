class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :events
	has_many :invitations
  
	    EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
                scope :sorted, lambda { order("name ASC") }
      #FORBIDDEN_USERNAMES = ['littlebopeep','humptydumpty','marymary']
         validates_presence_of :username
   validates_presence_of :email
   validates_length_of :email, :maximum => 100
   validates_format_of :email, :with => EMAIL_REGEX
   validates_confirmation_of :email
end