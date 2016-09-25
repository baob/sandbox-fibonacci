require_relative '../lib/fibo_tr_1'

RSpec.describe Fibo do
  describe 'continuity going through 0' do
    (-7..+7).each do |index|
      specify { expect(subject.fibo(index + 2)).to eq(subject.fibo(index + 1) + subject.fibo(index)) }
    end
  end

  context 'index[0] is not 0' do
    subject { described_class.new(index0: 3, index1: 4) }

    describe 'index 0' do
      specify { expect(subject.fibo(0)).to eq(3) }
    end

    describe 'index 1' do
      specify { expect(subject.fibo(1)).to eq(4) }
    end

    describe 'index 2' do
      specify { expect(subject.fibo(2)).to eq(7) }
    end

    describe 'continuity going through 0' do
      (-7..+7).each do |index|
        specify { expect(subject.fibo(index + 2)).to eq(subject.fibo(index + 1) + subject.fibo(index)) }
      end
    end
  end
end
