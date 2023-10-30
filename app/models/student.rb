class Student < ApplicationRecord
    has_many :blogs
    
    has_one_attached :profile_image
    #   person.profile_image.attach(io: File.open("/path/to/face.jpg"), filename: "shayna.jpeg", content_type: "image/jpeg")
 



    validates :name, presence: true, length: {maximum: 14, minimum: 2}
    validates :email, presence: true,uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ ,
        message: "only allows letters and Uniq email address" }
       
       
    #  validates :name, length: { minimum: 2 }
    validates :roll, presence: true,uniqueness: true,numericality: { only_integer: true ,message:"Don't again use this roll number"}
    validates :address, presence: true, length: {maximum: 50, minimum: 5}

    

    
end
