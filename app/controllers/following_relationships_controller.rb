class FollowingRelationshipsController < ApplicationController
  def create
    # since were using bare word, user, this will make a call to the method below.
    # BAD, below will call method/look up record TWICE
    current_user.follow(user)
  	redirect_to user, notice: "Now following user"
  end

  def destroy
    current_user.unfollow(user)
  	redirect_to user, notice: "No longer following user"
  end

  private

  def user
    @_user ||= User.find(params[:user_id])
  end
end

# Ruby will make the distinction between local vars and methods;
# if it can't find a local var in your scope, it will find a method by the same name
# that way we can get rid of the variable declaration all together.

# @_user ||= User.find(params[:user_id])

# once line 6 looks up the record the first time, it will store it in @_user,
# that way when the program hits line 7 it won't have to do another lookup.
