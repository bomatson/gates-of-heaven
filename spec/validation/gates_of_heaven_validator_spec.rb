require 'bundler/setup'
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
         before do
           subject.password = 'foo'
         end

         it 'add errors to the model object' do
           expect(subject.errors[:password]).to_not be_empty
         end
       end
     end
   end
  end
end
