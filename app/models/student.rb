class Student < ApplicationRecord
    validates :name, presence: true, length: {maximum: 14, minimum: 2}
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ ,
        message: "only allows letters" }
    #  validates :name, length: { minimum: 2 }
    validates :roll, presence: true,numericality: { only_integer: true }
    validates :address, presence: true, length: {maximum: 50, minimum: 8}

    

    
end
