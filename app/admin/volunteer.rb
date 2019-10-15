ActiveAdmin.register Volunteer do
  permit_params :first_name,
                :last_name,
                :email,
                :phone_number,
                :project_id,
                :linkedin_url,
                :bio,
                :job_title,
                :employer

  active_admin_import

  scope :all
  scope :allocated
  scope :not_allocated

  # Config Filters
  remove_filter :bio, :project, :linkedin_url
  remove_filter :front_end, :back_end  # don't show up as numeric by default ¯\_(ツ)_/¯

  index do
    column "First Name", :first_name
    column "Last Name", :last_name
    column "Email", :email
    column "Phone #", :phone_number
    column "Project", :project
    actions
  end

  form title: proc{ |v| "#{v.first_name} #{v.last_name}"} do |f|
    f.inputs do
      f.input :project
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :phone_number
      f.input :job_title
      f.input :employer
      f.input :bio, as: :text
      f.input :linkedin_url
    end

    f.actions do
      f.action :submit
      f.action :cancel, :wrapper_html => { :class => 'cancel'}
    end
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
      row :bio
      row :linkedin_url do
        link_to(volunteer.linkedin_url, volunteer.linkedin_url) unless volunteer.linkedin_url.blank?
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