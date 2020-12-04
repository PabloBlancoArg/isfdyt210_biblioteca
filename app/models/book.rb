class Book < ApplicationRecord
    has_many :loans, dependent: :destroy
    has_many :users, through: :loans

    validates :title, :author, :published_at, :editorial, presence: true
    
    def loans?
        self.loans.empty?
    end 

end