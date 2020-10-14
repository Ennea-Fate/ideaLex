require "application_system_test_case"

class FrequencyVocabulariesTest < ApplicationSystemTestCase
  setup do
    @frequency_vocabulary = frequency_vocabularies(:one)
  end

  test "visiting the index" do
    visit frequency_vocabularies_url
    assert_selector "h1", text: "Frequency Vocabularies"
  end

  test "creating a Frequency vocabulary" do
    visit frequency_vocabularies_url
    click_on "New Frequency Vocabulary"

    fill_in "Book", with: @frequency_vocabulary.book_id
    fill_in "Text", with: @frequency_vocabulary.text
    click_on "Create Frequency vocabulary"

    assert_text "Frequency vocabulary was successfully created"
    click_on "Back"
  end

  test "updating a Frequency vocabulary" do
    visit frequency_vocabularies_url
    click_on "Edit", match: :first

    fill_in "Book", with: @frequency_vocabulary.book_id
    fill_in "Text", with: @frequency_vocabulary.text
    click_on "Update Frequency vocabulary"

    assert_text "Frequency vocabulary was successfully updated"
    click_on "Back"
  end

  test "destroying a Frequency vocabulary" do
    visit frequency_vocabularies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frequency vocabulary was successfully destroyed"
  end
end
