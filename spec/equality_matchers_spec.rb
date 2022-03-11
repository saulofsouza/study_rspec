RSpec.describe 'equality matchers' do
    let(:a) { 3.0 }
    let(:b) { 3 }

    describe 'eq matcher' do
        it 'test for value and ignores type' do
            expect(a).to eq(3)
            expect(b).to eq(3.0)
            expect(a).to eq(b)
        end
    end

    describe 'eql matcher' do
        it 'tests for value, including same type' do
            expect(a).to eq(3)
            expect(b).to eq(3.0)
            expect(a).to eq(b)
        end
    end

    describe 'equal and be matcher' do
        let(:a) { [1, 2, 3] }
        let(:b) { [1, 2, 3] }
        let(:c) { a }

        it 'cares about identity' do
            expect(a).to eq(b)
            expect(a).to eql(b)
            
            expect(a).to equal(c)
            expect(a).to be(c)

            expect(a).not_to equal(b)
            expect(a).not_to equal([1, 2, 3])
        end
    end
end