require 'spec_helper'

describe User do

  # associations
  it { should have_many :answers }
  it { should have_many :questions }

  its(:security_question_authenticatable?) { should be_true }

end
