require 'rails/generators/active_record'

module ActiveRecord
  module Generators
    class DeviseSecurityQuestionsGenerator < ActiveRecord::Generators::Base

      argument :name, type: :string, default: 'devise_security_questions'

      source_root File.expand_path("../../templates", __FILE__)

      def copy_devise_security_questions_migration
        migration_template "questions.rb", "db/migrate/devise_security_questions_create_questions.rb"
      end

    end
  end
end
