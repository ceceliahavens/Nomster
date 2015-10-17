FactoryGirl.define do

  	factory :comment do	
		message "It's food!"
		rating "3_stars"
		association :user
		association :place
	end

	factory :place do
		name "A Cafe"
		description "serves food"
		address "5678 Schlameal, Springfield, MO "
		association :user
	end

end