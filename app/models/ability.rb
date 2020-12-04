class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all # permissions for every user, even if not logged in    
    if user.present?  # additional permissions for logged in users (they can manage their posts)
      can :edit, User
      can :create, Loan , user_id: user.id
      cannot [:edit, :destroy], Book
      if user.admin?  # additional permissions for administrators
        can :manage, :all
      end
      if user.librarian?
        can :manage, Loan
        can :manage, User
      end
      if user.student?
        cannot [:edit, :destroy], Loan
      end
    end
  end
end