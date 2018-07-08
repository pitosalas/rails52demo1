require "application_system_test_case"

class ContentsTest < ApplicationSystemTestCase
  setup do
    @content = contents(:one)
  end

  test "visiting the index" do
    visit contents_url
    assert_selector "h1", text: "Original Text"
  end

  test "creating a Content" do
    visit contents_url
    click_on "New Original Text"
    select(@content.from_lang, :from => 'content_from_lang')
    fill_in "content_text", with: @content.text
    click_on "OK"
    assert_text "Content was successfully created"
    click_on "Back"
  end

  test "updating a Content" do
    visit contents_url
    click_on "Edit", match: :first

    select(@content.from_lang, :from => 'content_from_lang')
    fill_in "content_text", with: @content.text
    click_on "OK"

    assert_text "Content was successfully updated"
    click_on "Back"
  end

  test "destroying a Content" do
    visit contents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Content was successfully destroyed"
  end
end
