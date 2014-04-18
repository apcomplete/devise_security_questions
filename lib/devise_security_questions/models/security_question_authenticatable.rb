require 'devise_security_questions/hooks/after_authentication'

module Devise
  module Models
    module SecurityQuestionAuthenticatable
      extend ActiveSupport::Concern

      included do
        has_many :answers, as: :questionable, class_name: DeviseSecurityQuestions::Answer
        has_many :questions, through: :answers, class_name: DeviseSecurityQuestions::Question
      end

      def security_question_authenticatable?
        true
      end

    end
  end
end
