require './test/test_helper'

class BlogLinkTest < CapybaraTestCase

  def test_user_can_navigate_to_blog
    visit '/blog'

    assert_equal 200, page.status_code
    assert_equal '/blog', current_path
  end

end
