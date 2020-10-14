require 'test_helper'

class FrequencyVocabulariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frequency_vocabulary = frequency_vocabularies(:one)
  end

  test "should get index" do
    get frequency_vocabularies_url
    assert_response :success
  end

  test "should get new" do
    get new_frequency_vocabulary_url
    assert_response :success
  end

  test "should create frequency_vocabulary" do
    assert_difference('FrequencyVocabulary.count') do
      post frequency_vocabularies_url, params: { frequency_vocabulary: { book_id: @frequency_vocabulary.book_id, text: @frequency_vocabulary.text } }
    end

    assert_redirected_to frequency_vocabulary_url(FrequencyVocabulary.last)
  end

  test "should show frequency_vocabulary" do
    get frequency_vocabulary_url(@frequency_vocabulary)
    assert_response :success
  end

  test "should get edit" do
    get edit_frequency_vocabulary_url(@frequency_vocabulary)
    assert_response :success
  end

  test "should update frequency_vocabulary" do
    patch frequency_vocabulary_url(@frequency_vocabulary), params: { frequency_vocabulary: { book_id: @frequency_vocabulary.book_id, text: @frequency_vocabulary.text } }
    assert_redirected_to frequency_vocabulary_url(@frequency_vocabulary)
  end

  test "should destroy frequency_vocabulary" do
    assert_difference('FrequencyVocabulary.count', -1) do
      delete frequency_vocabulary_url(@frequency_vocabulary)
    end

    assert_redirected_to frequency_vocabularies_url
  end
end
