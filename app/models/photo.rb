class Photo < ApplicationRecord
    # validates :name, presence: true, length: {maximum: 14, minimum: 5}
    # validates :name, presence: true, length: {maximum: 14, minimum: 3}
    # validates :name, presence: { strict: true }
    # validates :name, presence: true
    # validates :name, presence:{ message: "must be given please" }
    # validates :size, presence: true,numericality: { only_integer: true },length: { is: 2 }
    # Use custom validations 
    # validate :name_length
    














    
    
   #callbacks (Creating an Object)
    before_validation :call_back
    def call_back
        puts "This is a before validation "
    end
    after_validation :t1
    def t1
        puts "this is a after validation"
    end

    before_create :abc 
    def abc 
        puts "Tihs is a before create"
    end
    before_save do
        puts "This a SAVA but before"
    end
    after_create do 
        puts "This is a after_create"
    end
    after_save do 
        puts "This is a SAVE but after"
    end

    after_commit do 
        puts "I am commited byt after time"
    end

     after_initialize do |photo|
        puts "You have initialized an object"
    end
    
    after_find do |photo| 
        puts "You have found an object"
    end

    after_touch do |photo|
        puts "You have Touch an object"
    end

    
    
    

end
