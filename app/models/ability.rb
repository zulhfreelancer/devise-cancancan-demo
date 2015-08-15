class Ability
  include CanCan::Ability

  def initialize(user)

    # kalau user == nil, create satu user
    user ||= User.new

      if user.has_role?('Admin')
      # only Admin can do these things  
        can :manage, :all
      
      else
      # subscriber
      # subscriber (user yang tak login) boleh tengok semua post dengan single post je
        can :index, Post
        can :show, Post
      end
  end
end
