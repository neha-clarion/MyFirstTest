class User < ActiveRecord::Base
  has_many :profiles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :name, :skype_id
  #attr_accessor :name, :skype_id

  #validates :name, presence: true,length: { maximum: 20, message: "*Please fill name within 20 cahracter" }, format: { with: /\A[a-zA-z]+\z/,
    #message: "Please only use character" }
end

