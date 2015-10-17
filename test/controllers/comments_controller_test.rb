require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test 'user_dashboard' do
		user = FactoryGirl.create(:user)
		sign_in user
		place = FactoryGirl.create(:place)

	assert_difference 'Comment.count' do
			post :create, :place_id => place.id, :comment => {
				:message => 'I like food',
				:rating => '3_stars'
				}
			
		end
		assert_redirected_to place_path(place)
		assert_equal 1, place.comments.count
	end
end
