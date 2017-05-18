require 'test_helper'

class PropiedadControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get propiedad_index_url
    assert_response :success
  end

end
