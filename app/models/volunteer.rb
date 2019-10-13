class Volunteer < ApplicationRecord
	belongs_to :project, optional: true

	scope :allocated, -> { where.not project: nil }
	scope :not_allocated, -> { where project: nil }

	def skills
		skills = {}
		skills[:front_end] = front_end unless front_end < 3
		skills[:back_end] = back_end unless back_end < 3
		skills[:databases] = databases unless databases < 3
		skills[:mobile] = mobile unless mobile < 3
		skills[:dev_ops] = dev_ops unless dev_ops < 3
		skills[:wordpress] = wordpress unless wordpress < 3
		skills[:squarespace] = squarespace unless squarespace < 3
		skills[:wix] = wix unless wix < 3
		skills[:weebly] = weebly unless weebly < 3
		skills[:html_css] = html_css unless html_css < 3
		skills[:javascript] = javascript unless javascript < 3
		skills[:react] = react unless react < 3
		skills[:vue] = vue unless vue < 3
		skills[:angular] = angular unless angular < 3
		skills[:node_js] = node_js unless node_js < 3
		skills[:laravel] = laravel unless laravel < 3
		skills[:rails] = rails unless rails < 3
		skills[:django] = django unless django < 3
		skills[:asp_net] = asp_net unless asp_net < 3
		skills[:java] = java unless java < 3
		skills[:postgres] = postgres unless postgres < 3
		skills[:my_sql] = my_sql unless my_sql < 3
		skills[:sql_server] = sql_server unless sql_server < 3
		skills[:no_sql] = no_sql unless no_sql < 3
		skills[:android] = android unless android < 3
		skills[:ios] = ios unless ios < 3
		skills[:xamarin] = xamarin unless xamarin < 3
		skills[:ionic] = ionic unless ionic < 3
		skills[:react_native] = react_native unless react_native < 3
		skills[:aws] = aws unless aws < 3
		skills[:azure] = azure unless azure < 3
		skills[:heroku] = heroku unless heroku < 3
		skills[:digital_ocean] = digital_ocean unless digital_ocean < 3
		skills[:google_cloud_platform] = google_cloud_platform unless google_cloud_platform < 3
		skills[:docker] = docker unless docker < 3
		skills[:version_control] = version_control unless version_control < 3
		skills[:print_design] = print_design unless print_design < 3
		skills[:ux] = ux unless ux < 3
		skills[:ui] = ui unless ui < 3
		skills[:illustration] = illustration unless illustration < 3
		skills[:branding] = branding unless branding < 3
		skills[:motion_graphics] = motion_graphics unless motion_graphics < 3
		skills[:photoshop] = photoshop unless photoshop < 3
		skills[:illustrator] = illustrator unless illustrator < 3
		skills[:in_design] = in_design unless in_design < 3
		skills[:after_effects] = after_effects unless after_effects < 3
		skills[:sketch] = sketch unless sketch < 3
		skills[:figma] = figma unless figma < 3
		skills[:zeplin] = zeplin unless zeplin < 3
		skills[:invision] = invision unless invision < 3
		skills[:marvel] = marvel unless marvel < 3
		skills[:adobe_xd] = adobe_xd unless adobe_xd < 3
		skills[:project_management] = project_management unless project_management < 3
		skills[:brand_strategy] = brand_strategy unless brand_strategy < 3
		skills[:copywriting] = copywriting unless copywriting < 3
		skills[:crm_tools] = crm_tools unless crm_tools < 3
		skills[:marketing] = marketing unless marketing < 3
		skills[:seo] = seo unless seo < 3
		skills[:social_media] = social_media unless social_media < 3
		skills[:technical_writing] = technical_writing unless technical_writing < 3
		skills[:user_testing] = user_testing unless user_testing < 3
		skills[:photography] = photography unless photography < 3
		skills[:videography] = videography unless videography < 3
		skills
	end
end
