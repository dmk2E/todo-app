require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new name: 'taro', password: 'example'
  end

  test 'name should not be blank' do
    @user.name = ' ' * 5
    assert_not @user.save
  end

  test 'password should not be blank' do
    @user.password = ' ' * 6
    assert_not @user.save
  end

  test 'password should be long enough' do
    @user.password = 'a' * 5
    assert_not @user.save
  end

  test 'user should be unique' do
    duplicate_user = @user.dup
    @user.save
    duplicate_user.password = 'a' * 6
    assert_not duplicate_user.save
  end
end
