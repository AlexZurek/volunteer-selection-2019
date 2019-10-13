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

  # form do |f|
  #   f.semantic_errors
  #   f.inputs do
  #     f.input :name, placeholder: "Enter a name..."
  #     f.input :email, placeholder: "Enter an email address..."
  #   end

  #   f.actions do
  #     f.submit "Create User"
  #   end
  # end
end