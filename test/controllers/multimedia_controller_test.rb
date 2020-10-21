require 'test_helper'

class MultimediaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @multimedia = multimedia(:one)
  end

  test "should get index" do
    get multimedia_index_url
    assert_response :success
  end

  test "should get new" do
    get new_multimedia_url
    assert_response :success
  end

  test "should create multimedia" do
    assert_difference('Multimedia.count') do
      post multimedia_index_url, params: { multimedia: { description: @multimedia.description, name: @multimedia.name, tags: @multimedia.tags, type: @multimedia.type } }
    end

    assert_redirected_to multimedia_url(Multimedia.last)
  end

  test "should show multimedia" do
    get multimedia_url(@multimedia)
    assert_response :success
  end

  test "should get edit" do
    get edit_multimedia_url(@multimedia)
    assert_response :success
  end

  test "should update multimedia" do
    patch multimedia_url(@multimedia), params: { multimedia: { description: @multimedia.description, name: @multimedia.name, tags: @multimedia.tags, kindof: @multimedia.type } }
    assert_redirected_to multimedia_url(@multimedia)
  end

  test "should destroy multimedia" do
    assert_difference('Multimedia.count', -1) do
      delete multimedia_url(@multimedia)
    end

    assert_redirected_to multimedia_index_url
  end
end
