require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = 'Todo App'
  end
  test 'should get to root' do
    get root_path
    assert_response :success
    assert_select 'a[href=?]', root_path, count: 2
  end
end
