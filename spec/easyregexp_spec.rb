require 'spec_helper'
describe Easyregexp::Easyregexp do
  describe 'attributes' do
    #remember to use attr_accesor !!!!
  end
  describe 'generating methods' do
    describe '#anything_but_whitespaces' do
      it 'returns the correct regexp' do
        subject.anything_but_whitespaces
        subject.regexp.should = /\S*/
      end
      it 'returns the correct verbose form' do
        subject.anything_but_whitespaces
        subject.verbose.should = 'Anything but whitespaces'
      end
      it 'should behave properly accepting' do
        subject.anything_but_whitespaces
        'AAAAA'.should =~ subject
      end
      it 'should behave properly rejecting' do
        subject.anything_but_whitespaces
        'A AAAA'.should =~ subject
      end
    end
  end
end
