RSpec.describe Pet do
  describe 'validatons' do
    it {should validate_presence_of :name, :approx_age, :sex, :shelter_id}
  end

  describe 'relationships' do
    it { should belong_to :shelter }
  end
end
