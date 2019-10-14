class UpdateProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :team_resource_needs, :string
    add_column :projects, :non_profit_goals, :string
    add_column :projects, :non_profit_questions, :string
  end
end
