require 'gates_of_heaven'

describe GatesOfHeaven::Doorman do
  context '#guard' do
    subject { GatesOfHeaven::Doorman.new(password) }

    context 'given a password with less than 6 characters' do
      let(:password) { 'pass' }

      it 'will raise an ArgumentError' do
        expect( subject.guard ).to eq 'Password too short'
      end
    end

    context 'given a password with no numbers' do
      let(:password) { 'password' }

      it 'raises an error if there are no numbers' do
        expect( subject.guard ).to eq 'Password needs numbers'
      end
    end
  end
end
