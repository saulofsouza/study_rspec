RSpec.describe 'comparison matchers' do
    it 'allows for comparison with built-in Ruby operator' do
        expect(5).to be > 1
        expect(5).to be < 10
        
        expect(5).to be >= 1
        expect(5).to be >= 5

        expect(5).to be <= 10
        expect(5).to be <= 5
    end

    describe 100 do
        it { is_expected.to be > 90 }
        it { is_expected.to be < 110 }
        
        it { is_expected.to be >= 90 }
        it { is_expected.to be >= 100 }

        it { is_expected.to be <= 110 }
        it { is_expected.to be <= 100 }
    end
end