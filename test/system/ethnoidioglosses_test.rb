require "application_system_test_case"

class EthnoidioglossesTest < ApplicationSystemTestCase
  setup do
    @ethnoidiogloss = ethnoidioglosses(:one)
  end

  test "visiting the index" do
    visit ethnoidioglosses_url
    assert_selector "h1", text: "Ethnoidioglosses"
  end

  test "creating a Ethnoidiogloss" do
    visit ethnoidioglosses_url
    click_on "New Ethnoidiogloss"

    fill_in "Author", with: @ethnoidiogloss.author_id
    fill_in "Book", with: @ethnoidiogloss.book_id
    fill_in "Description", with: @ethnoidiogloss.description
    fill_in "Status", with: @ethnoidiogloss.status
    fill_in "User", with: @ethnoidiogloss.user_id
    fill_in "Word", with: @ethnoidiogloss.word
    click_on "Create Ethnoidiogloss"

    assert_text "Ethnoidiogloss was successfully created"
    click_on "Back"
  end

  test "updating a Ethnoidiogloss" do
    visit ethnoidioglosses_url
    click_on "Edit", match: :first

    fill_in "Author", with: @ethnoidiogloss.author_id
    fill_in "Book", with: @ethnoidiogloss.book_id
    fill_in "Description", with: @ethnoidiogloss.description
    fill_in "Status", with: @ethnoidiogloss.status
    fill_in "User", with: @ethnoidiogloss.user_id
    fill_in "Word", with: @ethnoidiogloss.word
    click_on "Update Ethnoidiogloss"

    assert_text "Ethnoidiogloss was successfully updated"
    click_on "Back"
  end

  test "destroying a Ethnoidiogloss" do
    visit ethnoidioglosses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ethnoidiogloss was successfully destroyed"
  end
end
