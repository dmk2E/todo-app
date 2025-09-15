require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = 'Todo App'
    @account_link = 'https://github.com/dmk2E'
  end
  test 'should get to root' do
    get root_path
    assert_response :success
    assert_select 'a[href=?]', root_path, count: 2
    assert_select 'a[href=?]', '#'
    assert_select 'a[href=?]', '#'
    assert_select 'a[href=?]', @account_link
    assert_select 'title', full_title()
  end
end
