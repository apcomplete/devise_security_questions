require 'rails/generators/base'

module DeviseSecurityQuestions
  module Generators
    class InstallGenerator < Rails::Generators::Base
      hook_for :orm, as: "devise_security_questions"
    end
  end
end
