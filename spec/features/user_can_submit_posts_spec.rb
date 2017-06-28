require 'rails_helper'

RSpec.feature "Timeline", type: :feature do

  before(:each) do
    sign_in
  end

  scenario "Can submit posts and view them" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello, world!"
    click_button "Submit"
    expect(page).to have_content("Hello, world!")
  end

  scenario "Can view user that submitted post" do
    visit "/posts"
    click_link "New post"
    fill_in "Message", with: "Hello again"
    click_button "Submit"
    expect(page).to have_content("Hello again by user")
  end

end
