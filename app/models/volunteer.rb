class Volunteer < ApplicationRecord
	belongs_to :project, optional: true

	scope :allocated, -> { where.not project: nil }
	scope :not_allocated, -> { where project: nil }

	def skills
		skills = {}
		skills[:front_end] = front_end
		skills[:back_end] = back_end
		skills[:databases] = databases
		skills[:mobile] = mobile
		skills[:dev_ops] = dev_ops
		skills[:wordpress] = wordpress
		skills[:squarespace] = squarespace
		skills[:wix] = wix
		skills[:weebly] = weebly
		skills[:html_css] = html_css
		skills[:javascript] = javascript
		skills[:react] = react
		skills[:vue] = vue
		skills[:angular] = angular
		skills[:node_js] = node_js
		skills[:laravel] = laravel
		skills[:rails] = rails
		skills[:django] = django
		skills[:asp_net] = asp_net
		skills[:java] = java
		skills[:postgres] = postgres
		skills[:my_sql] = my_sql
		skills[:sql_server] = sql_server
		skills[:no_sql] = no_sql
		skills[:android] = android
		skills[:ios] = ios
		skills[:xamarin] = xamarin
		skills[:ionic] = ionic
		skills[:react_native] = react_native
		skills[:aws] = aws
		skills[:azure] = azure
		skills[:heroku] = heroku
		skills[:digital_ocean] = digital_ocean
		skills[:google_cloud_platform] = google_cloud_platform
		skills[:docker] = docker
		skills[:version_control] = version_control
		skills[:print_design] = print_design
		skills[:ux] = ux
		skills[:ui] = ui
		skills[:illustration] = illustration
		skills[:branding] = branding
		skills[:motion_graphics] = motion_graphics
		skills[:photoshop] = photoshop
		skills[:illustrator] = illustrator
		skills[:in_design] = in_design
		skills[:after_effects] = after_effects
		skills[:sketch] = sketch
		skills[:figma] = figma
		skills[:zeplin] = zeplin
		skills[:invision] = invision
		skills[:marvel] = marvel
		skills[:adobe_xd] = adobe_xd
		skills[:project_management] = project_management
		skills[:brand_strategy] = brand_strategy
		skills[:copywriting] = copywriting
		skills[:crm_tools] = crm_tools
		skills[:marketing] = marketing
		skills[:seo] = seo
		skills[:social_media] = social_media
		skills[:technical_writing] = technical_writing
		skills[:user_testing] = user_testing
		skills[:photography] = photography
		skills[:videography] = videography

		skills.keep_if { |k,v| v != nil }
	end
end
