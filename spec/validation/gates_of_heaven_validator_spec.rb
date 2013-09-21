require 'gates_of_heaven'
require 'active_model'

class User
  include ActiveModel::Validations
  attr_accessor :password
end

class BasicUser < User
  validates :password, gates_of_heaven: true
end

module ActiveModel
  module Validations
   describe GatesOfHeavenValidator do
     describe 'validations' do
       subject { BasicUser.new }

       context 'which are not good enough for heaven' do
         let(:too_short) { 'foo' }
         let(:no_number) { 'password' }

         it 'adds an error to the model record' do
           subject.password = too_short
           subject.valid?
           expect(subject.errors[:password]).to_not be_empty
         end

         it 'adds an error to the model record' do
           subject.password = no_number
           subject.valid?
           expect(subject.errors[:password]).to_not be_empty
         end
       end

       context 'which are good enough for heaven' do
         before do
           subject.password = 'password22'
           subject.valid?
         end

         it 'adds an error to the model record' do
           expect(subject.errors[:password]).to be_empty
         end
       end
     end
   end
  end
end
