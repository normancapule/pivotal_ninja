module PivotalNinja
  module Renderer
    module ProjectRenderer
      include Representable::JSON
      
      property :id
      property :project_id
      property :project_name
      property :kind
      property :last_viewed_at
      property :role

      property :name
      property :version
      property :point_scale_is_custom
      property :start_time
      property :week_start_day
      property :enable_tasks
      property :start_date
      property :enable_planned_mode
      property :public
      property :atom_enabled
      property :point_scale
      property :bugs_and_chores_are_estimatable
      property :velocity_averaged_over
      property :created_at
      property :updated_at
      property :current_iteration_number
      property :iteration_length
      property :number_of_done_iterations_to_show
      property :time_zone
      property :initial_velocity
      property :enable_following
      property :enable_incoming_emails
      property :has_google_domain
    end
  end
end
