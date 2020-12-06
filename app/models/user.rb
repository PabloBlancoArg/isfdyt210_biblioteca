class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :loans, dependent: :destroy
  has_many :books, through: :loans 

  validates_length_of :loans, maximum: 2, :on => :create
  validates_length_of :loans, maximum: 3, :on => :update
  validates :name, :last_name, :email, presence: true




  def admin?
    self.role == 'admin'
  end

  def librarian?
    self.role == 'librarian'
  end

  def student?
    self.role == 'student'
  end

  def valid_amount_of_loans?
    self.loans.count < 3
  end

end
