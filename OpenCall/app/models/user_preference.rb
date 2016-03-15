class UserPreference < ActiveRecord::Base
  belongs_to :user 	

  attr_accessible :phone_number, :cell_carrier, :gender, :ethnicity, :age_min, :age_max, :paid_only, :union, :background_roles, :nudity_roles, :theater_musical, :theater_plays, :theater_chorus, :film_feature, :film_short, :film_student, :tv_scripted, :tv_reality, :demo_instructional, :commercial_national, :commercial_local, :commercial_online, :modeling_print, :modeling_fashion, :modeling_promotional, :events_agents, :events_festivals, :events_groups, :perf_comedy, :perf_dancer, :perf_music, :nonperf_stage, :nonperf_crew, :nonperf_writer

  # created on devise user creation, validation only on update
  validates_presence_of :phone_number, :cell_carrier, :gender, :ethnicity, :age_min, :age_max, :paid_only, :union, :background_roles, :nudity_roles, :theater_musical, :theater_plays, :theater_chorus, :film_feature, :film_short, :film_student, :tv_scripted, :tv_reality, :demo_instructional, :commercial_national, :commercial_local, :commercial_online, :modeling_print, :modeling_fashion, :modeling_promotional, :events_agents, :events_festivals, :events_groups, :perf_comedy, :perf_dancer, :perf_music, :nonperf_stage, :nonperf_crew, :nonperf_writer, on: :update


end
