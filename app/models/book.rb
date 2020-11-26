class Book < ApplicationRecord
    has_many :loans
    has_many :users, through: :loans
    
    scope :with_long_title, -> { where("LENGTH(title) > 5") }

    scope :available, -> { joins(:loans).where('loans.status != ?', 'En Curso')}
    scope :all_available, -> { where('loans.presence = ?' , 'nil')}

end