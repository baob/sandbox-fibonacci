require_relative '../lib/fibo_tr_1'

RSpec.describe Fibo do

  describe 'index 0' do
    specify { expect(subject.fibo(0)).to eq(0) }
  end

  describe 'index 1' do
    specify { expect(subject.fibo(1)).to eq(1) }
  end

  describe 'index 5' do
    specify { expect(subject.fibo(6)).to eq(8) }
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
  end
end
