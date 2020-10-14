require 'test_helper'

class ConcordancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @concordance = concordances(:one)
  end

  test "should get index" do
    get concordances_url
    assert_response :success
  end

  test "should get new" do
    get new_concordance_url
    assert_response :success
  end

  test "should create concordance" do
    assert_difference('Concordance.count') do
      post concordances_url, params: { concordance: { concordance: @concordance.concordance, is_it_lemma: @concordance.is_it_lemma, width: @concordance.width } }
    end

    assert_redirected_to concordance_url(Concordance.last)
  end

  test "should show concordance" do
    get concordance_url(@concordance)
    assert_response :success
  end

  test "should get edit" do
    get edit_concordance_url(@concordance)
    assert_response :success
  end

  test "should update concordance" do
    patch concordance_url(@concordance), params: { concordance: { concordance: @concordance.concordance, is_it_lemma: @concordance.is_it_lemma, width: @concordance.width } }
    assert_redirected_to concordance_url(@concordance)
  end

  test "should destroy concordance" do
    assert_difference('Concordance.count', -1) do
      delete concordance_url(@concordance)
    end

    assert_redirected_to concordances_url
  end
end
