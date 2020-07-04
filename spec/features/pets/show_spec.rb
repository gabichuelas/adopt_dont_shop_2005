RSpec.describe 'as a visitor' do
  it 'when I visit /pets/:id I see the pet with that id including image, name, description, approximate age, sex, adoptable/pending adoption status' do

    shelter = Shelter.create(name: "Braun Farm")

    pet1 = Pet.create!(name: 'Noodle', approx_age: 3, sex: "male", description: "description of noodle", image: "https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/13001403/Australian-Cattle-Dog-On-White-03.jpg", shelter_id: shelter.id, status: "adoptable" )

    visit "/pets/#{pet1.id}"

    expect(page).to have_content("Noodle")
    expect(page).to have_content("description of noodle")
    expect(page).to have_content("Approximate Age: 3")
    expect(page).to have_content("Sex: male")
    expect(page).to have_xpath("//img[@src = 'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/11/13001403/Australian-Cattle-Dog-On-White-03.jpg' and @alt='photo of pet']")

    expect(page).to have_content("Status: adoptable")

    expect(page).to have_selector(:link_or_button, 'Update Pet')
    expect(page).to have_selector(:link_or_button, 'Delete Pet')
  end
end
