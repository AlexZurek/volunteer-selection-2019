ActiveAdmin.register Volunteer do
  permit_params :first_name, :last_name, :email, :phone_number, :project_id

  active_admin_import

  scope :all
  scope :allocated
  scope :not_allocated

  index do
    column "First Name", :first_name
    column "Last Name", :last_name
    column "Email", :email
    column "Phone #", :phone_number
    column "Project", :project
    actions
  end

  show title: proc{ |v| "#{v.first_name} #{v.last_name}"} do
    attributes_table do
      row :project
      row :first_name
      row :last_name
      row :email
      row :phone_number
      row :job_title
      row :employer
      row :linkedin_url do
        link_to(volunteer.linkedin_url, volunteer.linkedin_url)
      end
      (1..5).to_a.reverse.each do |i|
        row "Level #{i} Skills" do
          volunteer.skills.filter! { |k,v| v == i }&.map { |v| v[0].to_s.humanize }
        end
      end
      active_admin_comments
    end
  end
end