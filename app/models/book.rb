class Book < ApplicationRecord
    has_many :loans, dependent: :destroy
    has_many :users, through: :loans

    validates :title, :author, :published_at, :editorial, presence: true
    
    def loans?
        self.loans.empty?
    end 

    def full_title_id
        "#{self.try(:title)} - (#{self.try(:id)})"
    end
end