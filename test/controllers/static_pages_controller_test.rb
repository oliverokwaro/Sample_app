require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
@base_title = "Ruby on Rails Tutorial Sample App"
end

  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end
  test "should get about" do
  	get about_url
  	assert_response :success
  	assert_select "title", "About | #{@base_title}"
  end
  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
    assert_select "h3", "Our Offices"
  end
test "should get cv" do
    get cv_url
    assert_response :success
    assert_select "title", "#{@base_title}"
    assert_select "h4", "ACADEMIC BACKGROUND"
    assert_select "h4", "WORK EXPERIENCE"
    assert_select "h4", "AWARDS"
    assert_select "h4", "HOBBIES"
    assert_select "h4", "REFEREES"


  end
end