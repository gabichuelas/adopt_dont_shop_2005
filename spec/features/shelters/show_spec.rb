# As a visitor
# When I visit '/shelters/:id'
# Then I see the shelter with that id including the shelter's:
# - name
# - address
# - city
# - state
# - zip

RSpec.describe "visit /shelters/id", type: :feature do
  it "show given shelter's name, address, city, state, zip" do
    shelter1 = Shelter.create!({name: "Shelter 1", address: "1234 NW 10th St.", city: "Gainesville", state: "FL", zip: 32609})

    visit "/shelters"
    click_link(shelter1.name)

    page.has_content?(shelter1.name)
    page.has_content?(shelter1.address)
    page.has_content?(shelter1.city)
    page.has_content?(shelter1.state)
    page.has_content?(shelter1.zip)
  end
end
