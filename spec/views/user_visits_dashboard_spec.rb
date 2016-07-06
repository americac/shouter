require "rails_helper"

feature "User visits dashboard" do
  scenario "Sucessfully" do
    visit root_path
    expect(page).to have_content 'shouter'
  end
end
