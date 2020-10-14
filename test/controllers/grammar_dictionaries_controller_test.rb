require 'test_helper'

class GrammarDictionariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grammar_dictionary = grammar_dictionaries(:one)
  end

  test "should get index" do
    get grammar_dictionaries_url
    assert_response :success
  end

  test "should get new" do
    get new_grammar_dictionary_url
    assert_response :success
  end

  test "should create grammar_dictionary" do
    assert_difference('GrammarDictionary.count') do
      post grammar_dictionaries_url, params: { grammar_dictionary: { book_id: @grammar_dictionary.book_id, dictionary: @grammar_dictionary.dictionary } }
    end

    assert_redirected_to grammar_dictionary_url(GrammarDictionary.last)
  end

  test "should show grammar_dictionary" do
    get grammar_dictionary_url(@grammar_dictionary)
    assert_response :success
  end

  test "should get edit" do
    get edit_grammar_dictionary_url(@grammar_dictionary)
    assert_response :success
  end

  test "should update grammar_dictionary" do
    patch grammar_dictionary_url(@grammar_dictionary), params: { grammar_dictionary: { book_id: @grammar_dictionary.book_id, dictionary: @grammar_dictionary.dictionary } }
    assert_redirected_to grammar_dictionary_url(@grammar_dictionary)
  end

  test "should destroy grammar_dictionary" do
    assert_difference('GrammarDictionary.count', -1) do
      delete grammar_dictionary_url(@grammar_dictionary)
    end

    assert_redirected_to grammar_dictionaries_url
  end
end
