ActiveAdmin.register Project do
  actions :all, except: [:destroy]

  permit_params :name,
                :description,
                :team_resource_needs,
                :non_profit_goals,
                :non_profit_questions,
                volunteer_ids: []

  config.filters = false

  action_item :download do
    link_to "Download", download_csv_admin_projects_path()
  end

  collection_action :download_csv, method: :get do
    csv_data = CSV.generate do |csv|
      csv << ["Non Profit", "Volunteer", "Email", "Phone Number", "Top Skills"]
      Project.all.each do |project|
        project.volunteers.each do |v|
          csv << [project.name, "#{v.first_name} #{v.last_name}", v.email, v.phone_number, v.top_skills.to_s]
        end
      end
    end

    send_data csv_data, filename: "WFG2019-Team_Allocations.csv"
  end

  index do
    column "Name", :name
    column "Team Size" do |project|
      project.volunteers.count
    end
    column "Description", :description
    column "Non-Profit Goals", :non_profit_goals
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description, as: :text
      f.input :non_profit_goals, as: :text
      f.input :team_resource_needs, as: :text
      f.input :non_profit_questions, as: :text
    end

    f.actions do
      f.action :submit
      f.action :cancel, :wrapper_html => { :class => 'cancel'}
    end
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
          column "Skills" do |v|
            v.top_skills
          end
        end
      end
      active_admin_comments
    end
  end
end
