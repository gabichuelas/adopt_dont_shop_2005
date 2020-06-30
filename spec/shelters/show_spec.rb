# As a visitor
# When I visit '/shelters/:id'
# Then I see the shelter with that id including the shelter's:
# - name
# - address
# - city
# - state
# - zip

RSpec.describe "visit /shelters/:id", type: :feature do
  it "show given shelter's name, address, city, state, zip" do
    shelter1 = Shelter.create(name: "Shelter 1")
    shelter2 = Shelter.create(name: "Shelter 2")

    visit shelters_path
    click_on shelter1.name

    page.has_content?(shelter2.name)
    page.has_content?(shelter2.address)
    page.has_content?(shelter2.city)
    page.has_content?(shelter2.state)
    page.has_content?(shelter2.zip)
  end
end
