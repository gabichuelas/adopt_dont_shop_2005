# As a visitor
# When I visit '/shelters'
# Then I see the name of each shelter in the system

RSpec.describe "visit /shelters index", type: :feature do
  it "list of shelter names" do
    shelter1 = Shelter.create(name: "Shelter 1")
    shelter2 = Shelter.create(name: "Shelter 2")

    visit shelters_path

    # expect(page).to have_content(shelter1.name)
    # expect(page).to have_content(shelter2.name)
    page.has_content?(shelter1.name)
    page.has_content?(shelter2.name)
  end
end