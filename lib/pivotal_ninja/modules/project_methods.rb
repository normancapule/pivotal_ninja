module PivotalNinja
  module Modules
    module ProjectMethods
      def projects
        JSON(connection["/projects"].get).map{|me| PivotalNinja::Project.new.extend(PivotalNinja::Renderer::ProjectRenderer).from_json(me.to_json)}
      end

      def find_project(id)
        PivotalNinja::Project.new.extend(PivotalNinja::Renderer::ProjectRenderer).from_json(connection["/projects/#{id}"].get)
      rescue RestClient::Forbidden, RestClient::ResourceNotFound => e
        puts "Error: #{e.message}"
        nil
      end

      def project_activity(id)
        JSON(connection["/projects/#{id}/activity"].get).map{|activity| PivotalNinja::Activity.new.extend(PivotalNinja::Renderer::ActivityRenderer).from_json(activity.to_json)}
      end
    end
  end
end
