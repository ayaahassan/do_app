class Review < ApplicationRecord
    validates  :comment , presence:true 
    validates :rate, numericality: {greater_than_or_equal_t: 1, less_than_or_equal_to: 5,  only_integer: true }
    belongs_to :user
    belongs_to :post
end
