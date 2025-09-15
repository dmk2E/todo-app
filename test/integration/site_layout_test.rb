require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def setup
    @account_link = 'https://github.com/dmk2E'
  end
  test 'layout links' do
    get root_path
    assert_template 'static_pages/index'
    assert_select 'a[href=?]', root_path, count: 2
    assert_select 'a[href=?]', signup_path
    assert_select 'a[href=?]', '#'
    assert_select 'a[href=?]', @account_link
  end
end
