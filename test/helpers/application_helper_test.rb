require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
	test "full title helper" do
assert_equal full_title,         "Ruby on Rails Tutorial Sample App"
assert_equal full_title("Help"), "Help | Ruby on Rails Tutorial Sample App"
end
end
class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  def is_logged_in?
  	!session[:user_id].nil?
end
end
