class RegistrationsController < Devise::RegistrationsController
  
  protected
  prepend_before_filter :require_no_authentication, only: [:cancel]

  def after_update_path_for(resource)
    user_path(resource)
  end

end
