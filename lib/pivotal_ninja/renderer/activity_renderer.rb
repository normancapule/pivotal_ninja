module PivotalNinja
  module Renderer
    module ActivityRenderer
      include Representable::JSON
      
      property :guid
      property :highlight
      property :kind
      property :project
      property :message
      property :project_version
      property :occurred_at
      property :primary_resources
      property :performed_by
      property :changes
    end
  end
end
