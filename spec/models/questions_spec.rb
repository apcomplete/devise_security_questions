require 'spec_helper'

describe DeviseSecurityQuestions::Question do

  let(:question) { FactoryGirl.build :question }

  subject { question }

  # attributes
  it { should respond_to :title }

  # validations
  it { should validate_presence_of :title }
  it { should validate_uniqueness_of :title }

end
