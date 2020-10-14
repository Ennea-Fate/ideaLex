require "application_system_test_case"

class ConcordancesTest < ApplicationSystemTestCase
  setup do
    @concordance = concordances(:one)
  end

  test "visiting the index" do
    visit concordances_url
    assert_selector "h1", text: "Concordances"
  end

  test "creating a Concordance" do
    visit concordances_url
    click_on "New Concordance"

    fill_in "Concordance", with: @concordance.concordance
    check "Is it lemma" if @concordance.is_it_lemma
    fill_in "Width", with: @concordance.width
    click_on "Create Concordance"

    assert_text "Concordance was successfully created"
    click_on "Back"
  end

  test "updating a Concordance" do
    visit concordances_url
    click_on "Edit", match: :first

    fill_in "Concordance", with: @concordance.concordance
    check "Is it lemma" if @concordance.is_it_lemma
    fill_in "Width", with: @concordance.width
    click_on "Update Concordance"

    assert_text "Concordance was successfully updated"
    click_on "Back"
  end

  test "destroying a Concordance" do
    visit concordances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Concordance was successfully destroyed"
  end
end
