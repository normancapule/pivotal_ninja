module PivotalNinja
  module Modules
    module ProjectMethods
      def projects
        JSON(connection["/projects"].get).map{|me| Project.new.extend(PivotalNinja::Renderer::ProjectRenderer).from_json(me.to_json)}
      end

      def find_project(id)
        begin
          Project.new.extend(PivotalNinja::Renderer::ProjectRenderer).from_json(connection["/projects/#{id}"].get)
        rescue RestClient::Forbidden, RestClient::ResourceNotFound => e
          puts "Error: #{e.message}"
          nil
        end
      end
    end
  end
end
