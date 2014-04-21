require 'rails'
require 'openam_auth'

module OpenamErrbit
  class Railtie < Rails::Railtie
    config.after_initialize do
      User.send(:include, OpenamErrbit::UserDecorator)
      Devise::SessionsController.send(:include, OpenamErrbit::SessionsControllerDecorator)
      ApplicationController.send(:include, OpenamAuth::Authenticate)
    end
  end
end

require "openam_errbit/version"
require "openam_errbit/user_decorator"
require "openam_errbit/sessions_controller_decorator"

