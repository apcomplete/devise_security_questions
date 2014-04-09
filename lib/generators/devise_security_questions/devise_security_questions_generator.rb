require 'rails/generators/named_base'

module DeviseSecurityQuestions
  module Generators
    class DeviseSecurityQuestionsGenerator < Rails::Generators::NamedBase

      namespace "devise_security_questions"

      desc "Adds :security_question_authenticatable directive in the given model."

      def inject_security_question_authentication_content
        path = File.join("app", "models", "#{file_path}.rb")
        inject_into_file(path, "security_question_authenticatable, :", :after => "devise :") if File.exists?(path)
      end

    end
  end
end
