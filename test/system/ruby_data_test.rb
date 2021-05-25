require "application_system_test_case"

class RubyDataTest < ApplicationSystemTestCase
  setup do
    @ruby_datum = ruby_data(:one)
  end

  test "visiting the index" do
    visit ruby_data_url
    assert_selector "h1", text: "Ruby Data"
  end

  test "creating a Ruby datum" do
    visit ruby_data_url
    click_on "New Ruby Datum"

    fill_in "Rubytype", with: @ruby_datum.rubyType
    fill_in "Valinput", with: @ruby_datum.valInput
    click_on "Create Ruby datum"

    assert_text "Ruby datum was successfully created"
    click_on "Back"
  end

  test "updating a Ruby datum" do
    visit ruby_data_url
    click_on "Edit", match: :first

    fill_in "Rubytype", with: @ruby_datum.rubyType
    fill_in "Valinput", with: @ruby_datum.valInput
    click_on "Update Ruby datum"

    assert_text "Ruby datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Ruby datum" do
    visit ruby_data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ruby datum was successfully destroyed"
  end
end
