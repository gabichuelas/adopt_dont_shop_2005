# User Story 5, Shelter Update
#
# As a visitor
# When I visit a shelter show page
# Then I see a link to update the shelter "Update Shelter"
# When I click the link "Update Shelter"
# Then I am taken to '/shelters/:id/edit' where I  see a form to edit the shelter's data including:
# - name
# - address
# - city
# - state
# - zip
# When I fill out the form with updated information
# And I click the button to submit the form
# Then a `PATCH` request is sent to '/shelters/:id',
# the shelter's info is updated,
# and I am redirected to the Shelter's Show page where I see the shelter's updated info

RSpec.describe "update existing shelter", type: :feature do
  it "uses 'udate shelter' link to visit /shelters/id/edit, fill out form, and update shelter" do

    shelter1 = Shelter.create({name: "Shelter 1", address: "1234 NW 10th St.", city: "Gainesville", state: "FL", zip: 32609})

    visit "/shelters/#{shelter1.id}"
    click_link "Update Shelter"
    expect(current_path).to eq("/shelters/#{shelter1.id}/edit")

    find_field('name').to have_content('Shelter 1')
    fill_in('name', with: 'Shelter 1b')
    click_on('Update Shelter')
    expect(current_path).to eq("/shelters/#{shelter1.id}/edit")
    page.has_content?('Shelter 1b')
  end
end
