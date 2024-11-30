module DeviseWhitelist
extend ActiveSupport::Concern

included do
  before_action :configure_devise_params, if: :devise_controller?
end



  def configure_devise_params

    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:update, keys: [:name])
    
  end

end
