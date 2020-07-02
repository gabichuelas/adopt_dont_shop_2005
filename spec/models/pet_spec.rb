RSpec.describe Pet do
  describe 'validatons' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :approx_age }
    it { should validate_presence_of :sex }
    it { should validate_presence_of :shelter }
  end

  describe 'relationships' do
    it { should belong_to :shelter }
  end
end
