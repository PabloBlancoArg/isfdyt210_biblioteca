class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :loans, dependent: :destroy
         has_many :books, through: :loans

  def admin?
    self.role == 'admin'
  end

  def librarian?
    self.role == 'librarian'
  end

  def student?
    self.role == 'student'
  end
end
