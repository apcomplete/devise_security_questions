require 'spec_helper'

describe DeviseSecurityQuestions::Answer do

  let(:answer) { FactoryGirl.build :answer }

  subject { answer }

  # attributes
  it { should respond_to :encrypted_body }
  it { should respond_to :body }

  # assocations
  it { should belong_to :questionable }
  it { should belong_to :question }

  describe "#valid_body?" do
    context 'when correct body' do
      it "returns true" do
        expect(answer.valid_body?(answer.body)).to be_true
      end
    end

    context 'when incorrect body' do
      it "returns false" do
        expect(answer.valid_body?("incorrect body")).to be_false
      end
    end
  end

end
