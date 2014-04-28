module OpenamErrbit
  module UserDecorator
    extend ActiveSupport::Concern

    included do
      field :token, type: String
      field :uid, type: String

      def self.existing_user_by_token(token)
        where(token: token).first if token
      end

      def self.update_openam_user(token, hash)
        if user = where({email: hash.fetch('mail'){raise 'email is missing'}.first}).first
          user.update_attribute(:token, token)
        else
          user = self.new(openam_user_hash(hash, token))
          user.save(validate: false)
        end
        user
      end

      def self.openam_user_hash(hash, token)
        uid = hash.fetch('uid').first
        full_name = hash.fetch('cn').first
        email = hash.fetch('mail').first
        { uid: uid, name: full_name, email: email, token: token}
      end
    end
  end
end

