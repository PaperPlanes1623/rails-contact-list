class Contact < ApplicationRecord
  has_many :notes, dependent: :destroy
  #Associations
    # belongs_to
    # has_many
    # has_one
    has_one :address, dependent: :destroy
    # has_many :through
    # has_one :through
    # has_and_belongs_to_many
    # has_and_belongs_to_one
    # has_many :through and_has_and_belongs_to_many

    # dependent
     
  #validations
  #  confirmation
       #-have two fields match-case sensitive
       #-text_field :password
       #-text_field :password_confirmation

       #validates :password, confirmation: true
       #validates :password, confirmation: {case_sensitive: false}-sensitivity true by default

  #  inclusion
      #validates the attr values are included in a given set

      #class Coffee < ActiveRecord
      # validates :size, inclusion: {
      #   in: %w(small medium large),
      #     message: "not a valid size"
      # }
      #end
    #exclusion---does opposite of inclusion

  #  length
      #the length or size of the attr values

      #class Person < ActiveRecord
      #  validates :name, length: { minimum: 3 }
      #  validates :bio, length: { maximum: 500 }
      #  validates :password, length: { in: 6..20 }
      #  validates :zip_code, length: { is: 5 }
      #end

  #  numericality
     #only numbers
     
     #class Player < ApplicationRecord
     #  validates :points, numericality: true
     #  validates :games_played, numericality: { only_integer: true }
     #  validates :golf_handicap, numericality: { less_than_or_equal_to: 40.4, greater_than_or_equal_to: 2}
     #end

  #  presence
     #not empty

     #class Person < ApplicationRecord
     #  validates :name, :email, :password, presence: true
     #end

  #  uniqueness
     #unique inside of a database

     #class Account < ActiveRecord
     #  validates :email, uniqueness: true
     #end

      #Validations Options

       #allow_nil
        #boolean option, nil pass in
          #class Coffee < ActiveRecord
      # validates :size, inclusion: {
      #   in: %w(small medium large),
      #     message: "not a valid size"
      # }, allow_nil: true
      #end

       #allow_blank
        #empty string or nil, blank?
            #class Coffee < ActiveRecord
      # validates :size, inclusion: {
      #   in: %w(small medium large),
      #     message: "not a valid size"
      # }, allow_blank: true
      #end

       #message
        #string to be displayed, fails or errors
          #class Coffee < ActiveRecord
      # validates :size, inclusion: {
      #   in: %w(small medium large),
      #     message: "not a valid size"  <---
      # }
      #end

       #on
        #when validation should happen
          #class Person < ApplicationRecord
          #  validates :name, :email, :password, presence: true, on: :create   <---
          #  validates :age, numericality: true, on: :update  <---
          #end

       #Call backs - trigger logic based on the action / event
         #before_validation
         #after_validation
         #before_save
         #after_save
         #around_save
         #before_create
         #after_create
         #around_create

         #class CC < activeRecord
         #  before_save :encrypt_cc   <---

         #  private
         #    def encrypt_cc
         #      self.cc = encryptedcode(self.cc)
         #    end
         #end
      #contact = group ++ ppl
      #Array Serialization - array of items
      #serialize :group, Array
         

  #Class Method
    
    #class Person < activeRecord
    #called on a call of Person.sort_by_first_name
    #  def self.sort_by_first_name
    #     order(:first_name)
    #  end
    #end

  #Instance method

    #class Person < activeRecord
    #call method @person.full_name
    #  def full_name
    #    "#{self.first_name} #{self.last_name}"
    #  end
    #end
end
