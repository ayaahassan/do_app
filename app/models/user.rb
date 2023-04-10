class User < ApplicationRecord
    paginates_per 2

    has_many :posts
    has_many :reviews
end
