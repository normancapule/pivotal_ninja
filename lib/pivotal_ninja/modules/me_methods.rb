module PivotalNinja
  module Modules
    module MeMethods
      def me
        User.new.extend(PivotalNinja::Renderer::UserRenderer).from_json(connection["/me"].get)
      end

      def notifications
        JSON connection["/my/notifications"].get
      end

      def activity
        JSON(connection["/my/activity"].get).map{|me| Activity.new.extend(PivotalNinja::Renderer::ActivityRenderer).from_json(me.to_json)}
      end
    end
  end
end
