module PivotalNinja
  module Renderer
    module UserRenderer
      include Representable::JSON

      property :id
      property :project_id
      property :name
      property :time_zone
      property :api_token
      property :username
      property :initials
      property :email
      property :kind
      property :role
      property :wants_comment_notification_emails
      collection :projects, class: PivotalNinja::Project, extend: Renderer::ProjectRenderer
    end
  end
end
