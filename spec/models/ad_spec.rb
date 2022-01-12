require 'rails_helper'

RSpec.describe Ad, type: :model do
  let(:ad) { create(:ad)}

  # Validations
  context 'ActiveModel validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:type) }
  end

  #Associations
  describe "ActiveRecord associations" do
    it { should belong_to(:user) }
  end
end