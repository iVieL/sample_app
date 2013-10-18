class RelationshipsController < ApplicationController
  before_action :signed_in_user

  def create
    @user = User.find(params[:relationship][:followed_id])
    current_user.follow!(@user)

    # NO AJAX: Redireccionaba a la misma pagina del usuario, html format
    #redirect_to @user

    # AJAX Response
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow!(@user)

    # NO Ajax
    #redirect_to @user

    # Ajax - xhr
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
end