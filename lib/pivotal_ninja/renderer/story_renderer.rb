module PivotalNinja
  module Renderer
    module StoryRenderer
      include Representable::JSON

      property :id
      property :external_id
      property :project_id
      property :requested_by_id
      property :owned_by_id
      property :integration_id
      property :name
      property :description
      property :url
      property :story_type
      property :kind
      property :current_state
      property :estimate
      property :updated_at
      property :labels
      property :created_at
      property :accepted_at
    end
  end
end
