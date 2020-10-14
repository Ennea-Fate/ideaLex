require 'test_helper'

class EthnoidioglossesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ethnoidiogloss = ethnoidioglosses(:one)
  end

  test "should get index" do
    get ethnoidioglosses_url
    assert_response :success
  end

  test "should get new" do
    get new_ethnoidiogloss_url
    assert_response :success
  end

  test "should create ethnoidiogloss" do
    assert_difference('Ethnoidiogloss.count') do
      post ethnoidioglosses_url, params: { ethnoidiogloss: { author_id: @ethnoidiogloss.author_id, book_id: @ethnoidiogloss.book_id, description: @ethnoidiogloss.description, status: @ethnoidiogloss.status, user_id: @ethnoidiogloss.user_id, word: @ethnoidiogloss.word } }
    end

    assert_redirected_to ethnoidiogloss_url(Ethnoidiogloss.last)
  end

  test "should show ethnoidiogloss" do
    get ethnoidiogloss_url(@ethnoidiogloss)
    assert_response :success
  end

  test "should get edit" do
    get edit_ethnoidiogloss_url(@ethnoidiogloss)
    assert_response :success
  end

  test "should update ethnoidiogloss" do
    patch ethnoidiogloss_url(@ethnoidiogloss), params: { ethnoidiogloss: { author_id: @ethnoidiogloss.author_id, book_id: @ethnoidiogloss.book_id, description: @ethnoidiogloss.description, status: @ethnoidiogloss.status, user_id: @ethnoidiogloss.user_id, word: @ethnoidiogloss.word } }
    assert_redirected_to ethnoidiogloss_url(@ethnoidiogloss)
  end

  test "should destroy ethnoidiogloss" do
    assert_difference('Ethnoidiogloss.count', -1) do
      delete ethnoidiogloss_url(@ethnoidiogloss)
    end

    assert_redirected_to ethnoidioglosses_url
  end
end
