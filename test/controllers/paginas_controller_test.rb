require "test_helper"

class PaginasControllerTest < ActionDispatch::IntegrationTest
  test "should get sobre" do
    get paginas_sobre_url
    assert_response :success
  end
end
