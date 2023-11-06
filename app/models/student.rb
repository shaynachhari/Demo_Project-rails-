class Student < ApplicationRecord
    # has_many :blogs
    # custom validation

    validate :poolstack_email

    private

    def poolstack_email
     unless email.end_with?('@poolstack')
       errors.add(:email, 'must end with @poolstack')
    end
  end

    
    # has_one_attached :profile_image
    # person.profile_image.attach(io: File.open("/path/to/face.jpg"), filename: "shayna.jpeg", content_type: "image/jpeg")
 


    # validates
    # validates :name, presence: { strict: true }, length: {maximum: 14, minimum:5}
    # validates :token, presence: true, uniqueness: true, strict: TokenGenerationException
    # validates :name, inclusion: { in: %w(small medium large),
    # message: "%{value} is not a valid size" }

    # validates :email, presence: true,uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ ,
    #      message: "only allows letters and Uniq email address" }
       
    #  validates :name, length: { minimum: 2 }
    # validates :roll, presence: true,uniqueness: true,numericality: { only_integer: true ,message:"Don't again use this roll number"}
    # validates :address, presence: true, length: {maximum: 50, minimum: 5}


    # custom validation
    
    

    
end


