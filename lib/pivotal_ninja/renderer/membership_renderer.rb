module PivotalNinja
  module Renderer
    module MembershipRenderer
      include Representable::JSON

      property :id
      property :project_id
      property :kind
      property :role
      property :person, class: PivotalNinja::User, extend: Renderer::UserRenderer
    end
  end
end
