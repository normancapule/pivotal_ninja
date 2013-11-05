require "pivotal_ninja/api"

module PivotalNinja
  class Client
    
    include PivotalNinja::Modules::MeMethods
    include PivotalNinja::Modules::ProjectMethods
    include PivotalNinja::Modules::IterationMethods
    include PivotalNinja::Modules::MembershipMethods
    include PivotalNinja::Modules::StoryMethods

    attr_accessor :token, :connections
      
    def initialize(token="581fda7ffe3018edb9be99e132f03be4")
      @token = token
    end
    
    def connection
      @connections ? @connections : (@connections = {})
      @connections[@token] ? @connections[@token] : new_connection
    end
    
    private

    def new_connection
      @connections[@token] = RestClient::Resource.new("https://www.pivotaltracker.com#{api_path}", :headers => {'X-TrackerToken' => @token, 'Content-Type' => 'application/xml'})
    end

    def api_path
      '/services/v5'
    end
  end
end
