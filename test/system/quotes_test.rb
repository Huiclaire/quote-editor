require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit quotes_url
  #
  #   assert_selector "h1", text: "Quotes"
  # end
  test "Creating a new quote" do
    # 1. When we visit the Quotes#index page
    # we expect to see a title with the text Quotes
    visit quotes_path
    assert_selector "h1", text: "Quotes"

    # 2. When we click on the link with the text "New quote"
    # we expect to go to Quotes#new page with athe title "New quote"
    click_on "New quote"
    assert_selector "h1", text: "New quote"

    # 3. When we fill in the name input with "Capybara quote"
    # and we click on "Create Quote"
    fill_in "Name", with: "Capybara quote"
    click_on "Create quote"

    # 4. We expect to be back on the page with the title "Quotes"
    # and to see our "Capybara quote" added to the list
    assert_selector "h1", text: "Quotes"
    assert_text "Capybara quote"
  end
end
