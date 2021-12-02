require 'test_helper'

class MyQuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_questions_index_url
    assert_response :success
  end

end
