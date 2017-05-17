class ApplicationController < ActionController::Base
include Pundit

 protect_from_forgery with: :exception

 before_action :configure_permitted_parameters, if: :devise_controller?

 rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

 protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,
                                                      :last_name,
                                                      :date_of_birth,
                                                      :tipo_de_usuario,
                                                      :genero,
                                                      :telephone])
 end

 private

 def user_not_authorized
   flash[:alert] = ‘No le corresponde realizar esta acción.’
   redirect_to(request.referrer || root_path)
 end
end