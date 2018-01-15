require './test/test_helper'

class HomepageTest < CapybaraTestCase

  def test_user_can_see_the_homepage
    visit '/'

    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

  def test_error_message_works
    visit '/poop'

    assert 404, page.status_code
  end

end
