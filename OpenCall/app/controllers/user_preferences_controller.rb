class UserPreferencesController < ApplicationController
 	def show
   	end

   	def new
   		@user_preference = current_user.build_user_preference
   	end

   	def update
      	current_user.update.user_preference_params
   	end

   	def create 
   		current_user.user_preference.create(user_preference_params)
   	end

   	private

   	def user_preference_params
      	params.require(:user_preference).permit([:phone_number, :cell_carrier, :gender, :ethnicity, :age_min, :age_max, :paid_only, :union, :background_roles, :nudity_roles, :theater_musical, :theater_plays, :theater_chorus, :film_feature, :film_short, :film_student, :tv_scripted, :tv_reality, :demo_instructional, :commercial_national, :commercial_local, :commercial_online, :modeling_print, :modeling_fashion, :modeling_promotional, :events_agents, :events_festivals, :events_groups, :perf_comedy, :perf_dancer, :perf_music, :nonperf_stage, :nonperf_crew, :nonperf_writer])

   	end

end
