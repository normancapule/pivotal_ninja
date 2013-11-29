module PivotalNinja
  module Modules
    module IterationMethods
      def iterations(project_id)
        JSON(connection["/projects/#{project_id}/iterations"].get)
          .map{|me| PivotalNinja::Iteration.new.extend(PivotalNinja::Renderer::IterationRenderer).from_json(me.to_json)}
      rescue RestClient::Forbidden, RestClient::ResourceNotFound => e
        puts "Error: #{e.message}"
        nil
      end
    end
  end
end


