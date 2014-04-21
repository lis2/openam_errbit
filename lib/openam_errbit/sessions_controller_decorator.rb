module OpenamErrbit
  module SessionsControllerDecorator
    extend ActiveSupport::Concern

    included do
      def destroy
        openam_logout(current_user.token)
        puts " in destroyaction"
        redirect_to :root
      end
    end
  end
end
