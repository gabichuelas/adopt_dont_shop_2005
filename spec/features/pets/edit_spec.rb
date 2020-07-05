RSpec.describe "as a visitor", type: :feature do
  it "uses 'update pet' link on pet show page to edit image, name, description, approx age, and sex with a form" do

    shelter = Shelter.create!(name: "Braun Farm")

    pet1 = Pet.create!(name: 'Noodle', approx_age: 3, sex: "male", description: "description of noodle", image: "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/13001403/Australian-Cattle-Dog-On-White-03.jpg", shelter_id: shelter.id, status: "adoptable" )

    visit "/pets/#{pet1.id}"
    click_on "Update"
    expect(current_path).to eq("/pets/#{pet1.id}/edit")

    fill_in('name', with: 'Noodle Mendez')
    click_on('Save')
    expect(current_path).to eq("/pets/#{pet1.id}")
    page.has_content?('Noodle Mendez')
  end
end
