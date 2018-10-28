class PersonsController < ApplicationController
  def profile
    @user = current_user
  end

  def after_sign_out_path_for(resource_or_scope)
    request.referrer
  end

  def after_sign_in_path_for(resource)
    current_user_path
  end
end
