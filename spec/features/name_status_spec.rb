require 'rails_helper'

feature 'view the form in name and status tab', %{
  As a visitor, I should be able to view and fill out all the form fields.
} do
  #ACCEPTANCE CRITERIA
  # I can click the 'Name & Status' tab.
  # I can fill out 'Site Name' form field.
  # I can check 'Status' radio button.
  # I can fill out "Default URL for Preview" form field.

  scenario 'I can click the Name&Status tab' do
    visit root_path

    expect(page).to have_content("Name & Status")
    expect(page).to have_field("basic_configuration_site_name")
    expect(page).to have_field("basic_configuration_status")
    expect(page).to have_field("basic_configuration_default_behavior")
  end
end
