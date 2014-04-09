# == Schema Information
#
# Table name: devise_security_questions
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class DeviseSecurityQuestions::Question < ActiveRecord::Base

  self.table_name = "devise_security_questions"

  validates :title, presence: true, uniqueness: true

end
