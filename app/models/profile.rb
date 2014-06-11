class Profile < ActiveRecord::Base
  belongs_to :user
  #attr_accessible :address, :phone_number, :user_id
  #validates :address, presence: true, length: { maximum: 100 }
  #validates :phone_number, numericality: { only_integer: true }, length: { is: 10, message: "Please fill 10 digit phone no"}

end


