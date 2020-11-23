class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all # permissions for every user, even if not logged in    
    if user.present?  # additional permissions for logged in users (they can manage their posts)
      can :create, Loan , user_id: user.id 
      if user.admin?  # additional permissions for administrators
        can :manage, :all
        if user.librarian?
          can :manage, Loan
          can :manage, User
        end
      end
    end
  end
end