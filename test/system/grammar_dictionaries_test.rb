require "application_system_test_case"

class GrammarDictionariesTest < ApplicationSystemTestCase
  setup do
    @grammar_dictionary = grammar_dictionaries(:one)
  end

  test "visiting the index" do
    visit grammar_dictionaries_url
    assert_selector "h1", text: "Grammar Dictionaries"
  end

  test "creating a Grammar dictionary" do
    visit grammar_dictionaries_url
    click_on "New Grammar Dictionary"

    fill_in "Book", with: @grammar_dictionary.book_id
    fill_in "Dictionary", with: @grammar_dictionary.dictionary
    click_on "Create Grammar dictionary"

    assert_text "Grammar dictionary was successfully created"
    click_on "Back"
  end

  test "updating a Grammar dictionary" do
    visit grammar_dictionaries_url
    click_on "Edit", match: :first

    fill_in "Book", with: @grammar_dictionary.book_id
    fill_in "Dictionary", with: @grammar_dictionary.dictionary
    click_on "Update Grammar dictionary"

    assert_text "Grammar dictionary was successfully updated"
    click_on "Back"
  end

  test "destroying a Grammar dictionary" do
    visit grammar_dictionaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grammar dictionary was successfully destroyed"
  end
end
