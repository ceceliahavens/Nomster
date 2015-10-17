FactoryGirl.define do

  factory :user do
		sequence :email do |n|
			 "test#{n}@gmail.com"
		end

		password "testing86"
		password_confirmation "testing86"
	end

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