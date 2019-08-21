require_relative "../citizen"

describe Citizen do
  describe "#can_vote?" do
    it "returns true if the citizen is 18 years old" do
      citizen = Citizen.new("", "", 18)
      expect(citizen.can_vote?).to eq(true)
    end

    it "returns false if the citizen is less than 18 years old" do
      citizen = Citizen.new("", "", 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe '#full_name' do
    it 'returns a correctly formatted name' do
      citizen = Citizen.new('john', 'doe', 18)
      expect(citizen.full_name).to eq('John Doe')
    end

    it 'it returns an empty string when passed empty strings' do
      citizen = Citizen.new('', '', 20)
      expect(citizen.full_name).to eq(' ')
    end
  end

  describe '#first_name' do
    it 'returns first name when first_name method called' do
      citizen = Citizen.new('john', 'doe', 18)
      expect(citizen.first_name).to eq('john')
    end
  end
end
