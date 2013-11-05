module PivotalNinja
  module Renderer
    module IterationRenderer
      include Representable::JSON

      property :start
      property :kind
      property :project_id
      property :team_strength
      property :number
      collection :stories, class: PivotalNinja::Story, extend: Renderer::StoryRenderer
    end
  end
end
