class RegistrationsController < Devise::RegistrationsController
  protected
  prepend_before_filter :require_no_authentication, only: [:cancel]

  def after_update_path_for(resource)
    # explode
    # p "current_user.image #{current_user.image}"
    #
    # cloud_resp = Cloudinary::Uploader.upload(current_user.image)
    # p "cloud_resp #{cloud_resp}"
    # current_user.image = cloud_resp['secure_url']
    # p "current_user.image #{current_user.image}"
    
    # if params[:image].present?
    #   preloaded = Cloudinary::PreloadedFile.new(params[:image])
    #   raise "Invalid upload signature" if !preloaded.valid?
    #   @user.image = preloaded.identifier
    # end
    user_path(resource)
  end

end
