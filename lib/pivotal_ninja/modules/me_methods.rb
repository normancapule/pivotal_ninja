module PivotalNinja
  module Modules
    module MeMethods
      def me
        PivotalNinja::User.new.extend(PivotalNinja::Renderer::UserRenderer).from_json(connection["/me"].get)
      end

      def notifications
        JSON connection["/my/notifications"].get
      end

      def activity
        JSON(connection["/my/activity"].get).map{|activity| PivotalNinja::Activity.new.extend(PivotalNinja::Renderer::ActivityRenderer).from_json(activity.to_json)}
      end
    end
  end
end
