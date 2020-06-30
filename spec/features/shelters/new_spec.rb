# User Story 4, Shelter Creation
#
# As a visitor
# When I visit the Shelter Index page
# Then I see a link to create a new Shelter, "New Shelter"
# When I click this link
# Then I am taken to '/shelters/new' where I  see a form for a new shelter
# When I fill out the form with a new shelter's:
# - name
# - address
# - city
# - state
# - zip
# And I click the button "Create Shelter" to submit the form
# Then a `POST` request is sent to '/shelters',
# a new shelter is created,
# and I am redirected to the Shelter Index page where I see the new Shelter listed.

RSpec.describe "create new shelter", type: :feature do
  it "uses 'new shelter' link to visit /shelters/new, fill out form, and save new shelter" do

    visit "/shelters"
    click_link "New Shelter"
    expect(current_path).to eq("/shelters/new")

    fill_in('Name', with: 'Shelter 4, new')
    fill_in('Address', with: '4242 Granada Blvd.')
    fill_in('City', with: 'Miami')
    fill_in('Zip', with: 33703)

    click_on("Add Shelter")

    page.has_content?('Shelter 4, new')

  end
end
