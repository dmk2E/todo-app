require "test_helper"

class TodosControllerTest < ActionDispatch::IntegrationTest
  def setup
    @todo = Todo.new name: 'Study', completed: false, user_id: 1
  end
end
