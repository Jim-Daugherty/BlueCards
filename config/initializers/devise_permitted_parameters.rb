module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_action :configure_permitted_parameters
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:account_update) << :name
    devise_parameter_sanitizer.for(:account_update) << :unit_type
    devise_parameter_sanitizer.for(:account_update) << :unit_number
    devise_parameter_sanitizer.for(:account_update) << :district
    devise_parameter_sanitizer.for(:account_update) << :council
  end

end

DeviseController.send :include, DevisePermittedParameters
