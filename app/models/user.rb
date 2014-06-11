class User < ActiveRecord::Base
  has_many :profiles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :password, :name, :skype_id
  #attr_accessor :name, :skype_id

  #validates :name, presence: true,length: { maximum: 20, message: "*Please fill name properly" }, format: { with: /\A[a-zA-z]+\z/,
    #message: "Please only use character" }
  #validates :email,
            #:presence => true,
            #:uniqueness => true,
            #:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
   
end

