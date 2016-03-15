class CreateUserPreferences < ActiveRecord::Migration
  def change
    create_table :user_preferences do |t|
    	
    	t.integer :phone_number
    	t.string :cell_carrier
    	t.string :gender
    	t.string :ethnicity
    	t.integer :age_min
    	t.integer :age_max
    	t.string :paid_only
    	t.string :union
    	t.string :background_roles
    	t.string :nudity_roles
    	t.string :theater_musical
    	t.string :theater_plays
    	t.string :theater_chorus
    	t.string :film_feature
    	t.string :film_short
    	t.string :film_student
    	t.string :tv_scripted
    	t.string :tv_reality
    	t.string :demo_instructional
    	t.string :commercial_national
    	t.string :commercial_local
    	t.string :commercial_online
    	t.string :modeling_print
    	t.string :modeling_fashion
    	t.string :modeling_promotional
    	t.string :events_agents
    	t.string :events_festivals
    	t.string :events_groups
    	t.string :perf_comedy
    	t.string :perf_dancer
    	t.string :perf_music
    	t.string :nonperf_stage
    	t.string :nonperf_crew
    	t.string :nonperf_writer

      	t.timestamps null: false
    end
  end
end
