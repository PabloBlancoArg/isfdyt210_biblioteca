class Book < ApplicationRecord
    has_many :loans
    has_many :users, through: :loans
end
