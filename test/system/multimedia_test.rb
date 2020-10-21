require "application_system_test_case"

class MultimediaTest < ApplicationSystemTestCase
  setup do
    @multimedia = multimedia(:one)
  end

  test "visiting the index" do
    visit multimedia_url
    assert_selector "h1", text: "Multimedia"
  end

  test "creating a Multimedia" do
    visit multimedia_url
    click_on "New Multimedia"

    fill_in "Description", with: @multimedia.description
    fill_in "Name", with: @multimedia.name
    fill_in "Tags", with: @multimedia.tags
    fill_in "kindof", with: @multimedia.kindof
    click_on "Create Multimedia"

    assert_text "Multimedia was successfully created"
    click_on "Back"
  end

  test "updating a Multimedia" do
    visit multimedia_url
    click_on "Edit", match: :first

    fill_in "Description", with: @multimedia.description
    fill_in "Name", with: @multimedia.name
    fill_in "Tags", with: @multimedia.tags
    fill_in "kindof", with: @multimedia.kindof
    click_on "Update Multimedia"

    assert_text "Multimedia was successfully updated"
    click_on "Back"
  end

  test "destroying a Multimedia" do
    visit multimedia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Multimedia was successfully destroyed"
  end
end
