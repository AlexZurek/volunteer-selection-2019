ActiveAdmin.register Project do
  actions :all, except: [:destroy]

  permit_params :name, :description, :team_resource_needs, :non_profit_goals, :non_profit_questions, volunteer_ids: []

  config.filters = false

  index do
    column "Name", :name
    column "Description", :description
    column "Non-Profit Goals", :non_profit_goals
    column "Team Size" do |project|
      project.volunteers.count
    end
    actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :non_profit_goals
      row :team_resource_needs
      row :non_profit_questions
      unless project.volunteers.empty?
        table_for project.volunteers do
          column "Volunteer" do |volunteer|
            link_to "#{volunteer.first_name} #{volunteer.last_name}", [ :admin, volunteer ]
          end
          column "Email", :email
          column "Job Title", :job_title
          column "Skills" do |volunteer|
            volunteer.skills.sort_by { |k,v| -v }.map { |v| v[0].to_s.humanize }
          end
        end
      end
    end
  end
end