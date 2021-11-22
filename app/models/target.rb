class Target < ApplicationRecord
    has_one_attached :avatar
    has_many :post
end
