class Student < ApplicationRecord
    

    # custom validation

   #   validate :poolstack_email

   #   private

   #   def poolstack_email
   #    unless email.end_with?('@poolstack')
   #      errors.add(:email, 'must end with @poolstack')
   #   end
   # end

    
    # has_one_attached :profile_image
    # person.profile_image.attach(io: File.open("/path/to/face.jpg"), filename: "shayna.jpeg", content_type: "image/jpeg")
 


    # validates
    # length: {maximum: 14, minimum:5}
    # validates :token, presence: true, uniqueness: true, strict: TokenGenerationException
    # validates :name, inclusion: { in: %w(small medium large),
    # message: "%{value} is not a valid size" }
    
    # validates :email, presence: true,uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ ,
    #      message: "only allows letters and Uniq email address" }
    
    #  validates :name, length: { minimum: 2 }
    # validates :roll, presence: true,uniqueness: true,numericality: { only_integer: true ,message:"Don't again use this roll number"}
    # validates :address, presence: true, length: {maximum: 50, minimum: 5}


    
    
    
    
    # use for custom validate for use callbacks
    validates :name,:email, presence: true
    # before_validation :name_length
    
    # private
    # def name_length
    #    if name.length < 5
    #      errors.add(:name, "must be at least 5 characters long")
    #    end 
    # end


    # use callbacks
    # after_create -> { puts "Congratulations!" }

    before_create do 
      self.email = name.capitalize if name.blank? 
    end 


    
    

    
end


