module V1
  module Contacts
    module Response
      extend ActiveSupport::Concern
      def create_and_render_contact(contact)
        # debugger
        contact.save! && render(:create, status: :created)
      end

      def render_invalid_response
        head(:unprocessable_entity)
      end
    end
  end
end
